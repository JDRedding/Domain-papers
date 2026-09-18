// Dragon-64 anyons as RDG points
type AnyonPoint = {
    id: number        // 0..63
    s: number         // 0..7
    t: number         // 0..7
    twist: Complex    // ω^(s*t)
}

// CUBY lane over Dragon-64 lattice
type CubyLane = {
    laneId: "PURPLE" | "GOLD" | "CYAN" | "WHITE"
    controls: AnyonPoint[]      // subset of the 64 anyons
    knots: number[]             // De Boor knot vector
}

// Evaluate lane as a smooth field over the anyon lattice
function evalLaneAt(
    lane: CubyLane,
    u: number                  // spline parameter
): AnyonPoint {
    // De Boor-style weighted sum over control anyons
    let posS = 0
    let posT = 0

    for (let i = 0; i < lane.controls.length; i++) {
        const cp = lane.controls[i]
        const w  = basis(i, degree(lane), u, lane.knots) // B-spline basis

        posS += w * cp.s
        posT += w * cp.t
    }

    // Project back to nearest lattice point (Z8 × Z8)
    const s8 = ((Math.round(posS) % 8) + 8) % 8
    const t8 = ((Math.round(posT) % 8) + 8) % 8

    return {
        id: 8 * s8 + t8,
        s: s8,
        t: t8,
        twist: omegaPow(s8 * t8)
    }
}
