import torch
import torch.nn as nn
import torch.nn.functional as F


# ============================================================
# Activations
# ============================================================

def complex_identity(z):
    return z


def complex_relu(z):
    return torch.relu(z.real) + 1j * torch.relu(z.imag)


def mod_relu(z, bias=0.0):
    r = torch.abs(z)
    scale = torch.relu(r + bias) / (r + 1e-8)
    return scale * z


# ============================================================
# Projection Generators
# ============================================================

class CircleProjection(nn.Module):
    """
    p_i = exp(i theta_i)

    Projection domain:
    P_circle = U(1)
    """

    def __init__(self, n):
        super().__init__()

        self.theta = nn.Parameter(torch.zeros(n))

    def forward(self):
        return torch.exp(1j * self.theta)


class SquareProjection(nn.Module):
    """
    p_i = i^k

    Projection domain:
    P_square = {1,i,-1,-i}
    """

    def __init__(self, n):
        super().__init__()

        self.logits = nn.Parameter(torch.zeros(n, 4))

        self.register_buffer(
            "roots",
            torch.tensor(
                [1, 1j, -1, -1j],
                dtype=torch.complex64
            )
        )

    def forward(self, tau=1.0, training=True):

        soft = F.gumbel_softmax(
            self.logits,
            tau=tau,
            hard=not training,
            dim=-1
        )

        return (soft * self.roots).sum(dim=-1)


# ============================================================
# Neuron = (S,I,D)
# ============================================================

class ProjectionNeuron(nn.Module):
    """
    Formal neuron

    S = (w,b)

    I(x,S,p)
      = Σ p_i w_i x_i + p_b b

    D(z)
      = activation(z)
    """

    def __init__(
        self,
        in_features,
        activation=complex_identity
    ):
        super().__init__()

        self.weight = nn.Parameter(
            torch.randn(
                in_features,
                dtype=torch.complex64
            )
        )

        self.bias = nn.Parameter(
            torch.randn(
                1,
                dtype=torch.complex64
            )
        )

        self.activation = activation

    def forward(
        self,
        x,
        phase_w,
        phase_b
    ):
        z = (phase_w * self.weight * x).sum(dim=-1)

        z = z + phase_b * self.bias.squeeze()

        return self.activation(z)


# ============================================================
# Circle Neuron Wrapper
# ============================================================

class CircleNeuron(nn.Module):

    def __init__(
        self,
        in_features,
        activation=complex_identity
    ):
        super().__init__()

        self.proj_w = CircleProjection(in_features)
        self.proj_b = CircleProjection(1)

        self.neuron = ProjectionNeuron(
            in_features,
            activation
        )

    def forward(self, x):

        phase_w = self.proj_w()

        phase_b = self.proj_b()[0]

        return self.neuron(
            x,
            phase_w,
            phase_b
        )


# ============================================================
# Square Neuron Wrapper
# ============================================================

class SquareNeuron(nn.Module):

    def __init__(
        self,
        in_features,
        activation=complex_identity
    ):
        super().__init__()

        self.proj_w = SquareProjection(in_features)
        self.proj_b = SquareProjection(1)

        self.neuron = ProjectionNeuron(
            in_features,
            activation
        )

    def forward(
        self,
        x,
        tau=1.0
    ):

        phase_w = self.proj_w(
            tau=tau,
            training=self.training
        )

        phase_b = self.proj_b(
            tau=tau,
            training=self.training
        )[0]

        return self.neuron(
            x,
            phase_w,
            phase_b
        )


# ============================================================
# Demo
# ============================================================

if __name__ == "__main__":

    batch_size = 32
    in_features = 16

    x = torch.randn(
        batch_size,
        in_features
    )

    circle = CircleNeuron(
        in_features,
        activation=complex_relu
    )

    square = SquareNeuron(
        in_features,
        activation=complex_relu
    )

    y_circle = circle(x)

    square.train()
    y_square_train = square(
        x,
        tau=1.0
    )

    square.eval()
    y_square_eval = square(
        x,
        tau=0.1
    )

    print("Circle:", y_circle.shape)
    print("Square train:", y_square_train.shape)
    print("Square eval:", y_square_eval.shape)
