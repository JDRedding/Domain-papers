"""
Complex Projection Neuron
- mode='circle'  : continuous phases on U(1) via learnable angles θ
- mode='square'  : discrete phases on C4 = {1, i, -1, -i}
                   (Gumbel-softmax relaxation during training)
"""

import torch
import torch.nn as nn
import torch.nn.functional as F


class ComplexProjectionNeuron(nn.Module):
    def __init__(self, in_features: int, mode: str = "circle"):
        super().__init__()
        assert mode in ("circle", "square")
        self.mode = mode
        self.in_features = in_features

        # Complex weights and bias
        self.weight = nn.Parameter(torch.randn(in_features, dtype=torch.complex64))
        self.bias   = nn.Parameter(torch.randn(1, dtype=torch.complex64))

        if mode == "circle":
            # Continuous learnable phases
            self.theta_w = nn.Parameter(torch.zeros(in_features))
            self.theta_b = nn.Parameter(torch.zeros(1))
        else:
            # Discrete logits over the four roots of unity
            self.logits_w = nn.Parameter(torch.zeros(in_features, 4))
            self.logits_b = nn.Parameter(torch.zeros(1, 4))

    def _square_phases(self, logits: torch.Tensor, hard: bool = False):
        soft = F.gumbel_softmax(logits, tau=1.0, hard=hard, dim=-1)
        roots = torch.tensor([1, 1j, -1, -1j], dtype=torch.complex64, device=logits.device)
        return (soft * roots).sum(dim=-1)

    def forward(self, x: torch.Tensor):
        if self.mode == "circle":
            phase_w = torch.exp(1j * self.theta_w)
            phase_b = torch.exp(1j * self.theta_b)
        else:
            hard = not self.training
            phase_w = self._square_phases(self.logits_w, hard=hard)
            phase_b = self._square_phases(self.logits_b, hard=hard)

        z = (phase_w * self.weight * x).sum(dim=-1)
        z = z + phase_b * self.bias.squeeze()
        return z


if __name__ == "__main__":
    # Continuous mode
    net_circle = ComplexProjectionNeuron(16, mode="circle")
    x = torch.randn(32, 16)
    z_circle = net_circle(x)
    print("Circle mode output shape:", z_circle.shape, "dtype:", z_circle.dtype)

    # Discrete mode
    net_square = ComplexProjectionNeuron(16, mode="square")
    net_square.train()
    z_square_train = net_square(x)
    print("Square mode (train) output shape:", z_square_train.shape)

    net_square.eval()
    z_square_eval = net_square(x)
    print("Square mode (eval) output shape:", z_square_eval.shape)

    print("Done.")
