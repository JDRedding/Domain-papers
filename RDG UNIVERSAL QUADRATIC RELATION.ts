#========================================================
# RDG UNIVERSAL QUADRATIC RELATION
#========================================================
# Curve: y^2 + p*x*y + b*x^2 + c*x + q*y + a = 0
# RDG tri-mode operator form:
#
#   R(x,y) = <(x,y), S (x,y)> + <(x,y), I> + D
#
# Types:
#   x,y : role-variables (R1 roles)
#   S   : 2x2 symmetric structure matrix
#   I   : 2-vector interaction term
#   D   : scalar dynamic offset
#
# Fundamentals:
#   Structure  = quadratic form
#   Interaction = linear coupling
#   Dynamics    = constant shift
#========================================================

#--------------------------------------------------------
# STRUCTURE MODE (S)
#--------------------------------------------------------
# Quadratic form coefficients:
#   b : x^2 coefficient
#   p : x*y coefficient
#   1 : y^2 coefficient
#
# Structure matrix S:
S = [ [ b    ,  p/2 ],
      [ p/2  ,  1   ] ]

# Structure operator:
#   S(x,y) = b*x^2 + p*x*y + y^2

#--------------------------------------------------------
# INTERACTION MODE (I)
#--------------------------------------------------------
# Linear coefficients:
#   c : x-term
#   q : y-term
#
# Interaction vector:
I = ( c , q )

# Interaction operator:
#   I(x,y) = c*x + q*y

#--------------------------------------------------------
# DYNAMICS MODE (D)
#--------------------------------------------------------
# Constant term:
D = a

#--------------------------------------------------------
# FULL RDG RELATION
#--------------------------------------------------------
R(x,y) = (x,y) * S * (x,y)^T + (x,y)·I + D
Set R(x,y) = 0 for the curve.

#========================================================
# RDG DISCRIMINANT
#========================================================
# Conic type determined by:
Delta = p^2 - 4*b

# Classification:
#   Delta < 0 : ellipse
#   Delta = 0 : parabola
#   Delta > 0 : hyperbola

#========================================================
# STRUCTURAL REDUCTION PIPELINE
#========================================================
# 1. Translation: remove linear terms
#    (x,y) -> (X,Y) + (x0,y0)
#
# 2. Rotation: diagonalize S
#    R^T S R = diag(lambda1, lambda2)
#
# 3. Scaling: normalize eigenvalues
#
# Produces canonical RDG forms:
#   Circle:   X^2 + Y^2 = r^2
#   Ellipse:  X^2/a^2 + Y^2/b^2 = 1
#   Parabola: Y^2 = 4*a*X
#   Hyperbola:X^2/a^2 - Y^2/b^2 = 1

#========================================================
# NON-CONIC EXAMPLE: CONCHOID
#========================================================
# (x - a)^2 * (x^2 + y^2) = k^2 * x^2
#
# Degree-4 RDG structure:
#   S: polynomial structure operator
#   I: pole-line coupling
#   D: branch-separation parameter

#========================================================
# RDG ANALYTIC OPERATORS
#========================================================
# Maxima/minima:
#   dy/dx = 0
#
# Tangent:
#   dy/dx = y / subtangent
#
# Quadrature (area):
#   A = ∫ y dx

#========================================================
# LOGISTIC CURVE (analytic RDG)
#========================================================
# y = a / (1 + exp(-b*(x-c)))
#
# Differential origin:
#   dy/dx = b*y*(1 - y/a)
#
# RDG modes:
#   S: saturation boundary
#   I: self-interaction y*(1 - y/a)
#   D: growth rate b
#========================================================
