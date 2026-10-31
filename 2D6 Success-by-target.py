def ways_ge(T: int) -> int:
    """Exact number of 2d6 outcomes with sum ≥ T (0–36)."""
    if T <= 2:
        return 36
    if T > 12:
        return 0
    if T <= 7:
        # failures = 1 + 2 + … + (T-2) = (T-2)(T-1)/2
        return 36 - (T - 2) * (T - 1) // 2
    # tail = m + (m-1) + … + 1 where m = 13 - T
    m = 13 - T
    return m * (m + 1) // 2

# usage
success = ways_ge(T)
probability = success / 36
fraction = f"{success}/36"
