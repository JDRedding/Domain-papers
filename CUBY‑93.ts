// CUBY-93 (RDG submodule)
// CUBY‑93 → RDG Submodule
// CUBY‑93 is a 4‑lane De Boor spline evaluator.
// It is a smooth field engine that runs over a discrete control lattice.
// It is not RDG, but it is a smooth evaluator that fits into RDG’s relational geometry.

module CUBY93 {

    type LaneID = "PURPLE" | "GOLD" | "CYAN" | "WHITE"

    // Control points = RDG points (can be Dragon-64 anyons)
    type ControlPoint = {
        lane: LaneID
        point: Dragon64.Point
    }

    type SplineLane = {
        lane: LaneID
        controls: ControlPoint[]
        knots: number[]
    }

    // De Boor evaluation = smooth relational operator
    function evalLane(L: SplineLane, u: number): Dragon64.Point {
        let s = 0, t = 0

        for (let i = 0; i < L.controls.length; i++) {
            const cp = L.controls[i]
            const w  = basis(i, degree(L), u, L.knots)
            s += w * cp.point.s
            t += w * cp.point.t
        }

        // Project back to discrete torus (Z8 × Z8)
        const s8 = ((Math.round(s) % 8) + 8) % 8
        const t8 = ((Math.round(t) % 8) + 8) % 8

        return {
            id: 8*s8 + t8,
            s: s8,
            t: t8,
            twist: omegaPow(s8*t8)
        }
    }
}
