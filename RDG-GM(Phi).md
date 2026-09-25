# RDG–GM(Φ): The Grade Machine with Explicit Coefficient Law

## 1. Typed Domains

Natural axis:
    N = {0,1,2,3,...}

Winding axis:
    W = {0,1,2,3,...}

Grade axis:
    Z = {...,-2,-1,0,1,2,...}

Chart:
    z = w - 1
    w = z + 1

## 2. Coefficient Law (Curried Form)

Φ : N → (W → ℂ)

For each natural number n ∈ N,
Φ(n) is a whole-indexed number stream:

    Φ(n) : W → ℂ
    Φ(n)(w) = Φ(n,w)

Define the winding-indexed coefficients:

    c_n^wind(w) = Φ(n,w)

Define the grade-indexed coefficients:

    c_n^grade(z) = Φ(n, z+1)

## 3. Series

Winding form:
    T_n(q) = Σ_{w ≥ 0} Φ(n,w) q^(w-1)

Grade form:
    T_n(q) = Σ_{z ≥ -1} Φ(n,z+1) q^z

These are identical under the chart z = w - 1.

## 4. Twist Operators

Twists act on the winding coordinate w, not on n.

Law A (shift):
    Φ^(k)(n,w) = Φ(n, w + k)

Law B (character weight):
    Φ^(k)(n,w) = χ(k,w) Φ(n,w)

Identity:
    Φ^(0)(n,w) = Φ(n,w)

## 5. Machine Object

The RDG Grade Machine with explicit coefficient law is:

    (n, Φ, {τ_k})

where:
    n     = natural series label
    Φ     = coefficient generator
    τ_k   = twist operators acting on w

All other structures (replication, mirror, pseudo-j, arithmetic encodings)
are optional layers built on top of this backbone.
