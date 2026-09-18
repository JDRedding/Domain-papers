// Dragon-64 [RDG submodule]
module Dragon64 {

    // 64 anyons = RDG points
    type Point = {
        id: number        // 0..63
        s: number         // 0..7
        t: number         // 0..7
        twist: Complex    // ω^(s*t)
    }

    // SL(2,Z8) = relational operator
    function act(g: Matrix2x2, p: Point): Point {
        const s2 = (g.a*p.s + g.b*p.t) % 8
        const t2 = (g.c*p.s + g.d*p.t) % 8
        return { id: 8*s2 + t2, s: s2, t: t2, twist: omegaPow(s2*t2) }
    }

    // S,T = invariant-generating operators
    function S(p: Point, q: Point): Complex {
        return (1/8) * omegaPow(-(p.s*q.t + p.t*q.s))
    }

    function T(p: Point): Complex {
        return omegaPow(p.s * p.t)
    }

    // 44 orbits = invariant classes
    type InvariantClass = { id: number, members: Point[] }

    // Wedderburn blocks = attractors
    type Attractor = {
        id: number
        block: "C1" | "M2" | "M3" | "M4"
        members: Point[]
    }
}
