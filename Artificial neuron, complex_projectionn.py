import torch
import torch.nn as nn
import torch.nn.functional as F


class ComplexProjectionNeuron(nn.Module):
    """
    Trainable complex projection neuron.
    
    mode='circle'  : continuous phases on U(1) via learnable angles θ
    mode='square'  : discrete phases on C4 = {1, i, -1, -i}
                     (Gumbel-softmax relaxation during training)
    """
    def __init__(self, in_features: int, mode: str = "circle"):
        super().__init__()
        assert mode in ("circle", "square")
        self.mode = mode
        self.in_features = in_features

        # Complex weights and bias
        self.weight = nn.Parameter(torch.randn(in_features, dtype=torch.complex64))
        self.bias   = nn.Parameter(torch.randn(1, dtype=torch.complex64))

        if mode == "circle":
            self.theta_w = nn.Parameter(torch.zeros(in_features))
            self.theta_b = nn.Parameter(torch.zeros(1))
        else:
            self.logits_w = nn.Parameter(torch.zeros(in_features, 4))
            self.logits_b = nn.Parameter(torch.zeros(1, 4))
            # Register roots once (avoids repeated allocation)
            self.register_buffer(
                "roots",
                torch.tensor([1, 1j, -1, -1j], dtype=torch.complex64)
            )

    def _square_phases(self, logits: torch.Tensor, hard: bool = False, tau: float = 1.0):
        soft = F.gumbel_softmax(logits, tau=tau, hard=hard, dim=-1)
        return (soft * self.roots).sum(dim=-1)

    def forward(self, x: torch.Tensor, tau: float = 1.0):
        if self.mode == "circle":
            phase_w = torch.exp(1j * self.theta_w)
            phase_b = torch.exp(1j * self.theta_b)
        else:
            hard = not self.training
            phase_w = self._square_phases(self.logits_w, hard=hard, tau=tau)
            phase_b = self._square_phases(self.logits_b, hard=hard, tau=tau)

        z = (phase_w * self.weight * x).sum(dim=-1)
        z = z + phase_b * self.bias.squeeze()
        return z
