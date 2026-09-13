# Heun’s equation
Karl Heun's two key contributions: his 1889 second-order differential equation with four regular singular points and his two-stage Runge-Kutta method for numerical ODE solving.

Heun's method improves accuracy over Euler's by computing the slope at the current point, estimating it at the next step, then averaging the two to update the solution.

**Heun’s equation** (second-order linear ODE with four regular singular points at $0$, $1$, $a$, and $\infty$):

$$
\frac{d^{2}w}{dz^{2}}+(\frac{\gamma}{z}+\frac{\delta}{z-1}+\frac{\epsilon}{z-a})\frac{dw}{dz}+\frac{\alpha\beta z-q}{z(z-1)(z-a)}w=0
$$

The parameters satisfy the relation $\epsilon=\alpha+\beta-\gamma-\delta+1$. Here $\alpha,\beta,\gamma,\delta,\epsilon$ are exponent parameters and $q$ is the accessory parameter.

**Heun’s method** (two-stage explicit Runge–Kutta / improved Euler method) for the IVP $y'=f(t,y)$, $y(t_n)=y_n$, with step size $h$:

$$
k_1=f(t_n,y_n)
$$

$$
k_2=f(t_n+h,y_n+hk_1)
$$

$$
y_{n+1}=y_n+\frac{h}{2}(k_1+k_2)
$$

This averages the slope at the current point with an Euler-predicted slope at the next point.
