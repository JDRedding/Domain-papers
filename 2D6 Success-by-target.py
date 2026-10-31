def ways_to_sum(k: int) -> int:
    """Number of ways to roll sum k with 2d6."""
    if 2 <= k <= 7:
        return k - 1
    elif 7 <= k <= 12:
        return 13 - k
    return 0

def p_sum_ge(T: int) -> float:
    """P(sum >= T) for 2d6."""
    if T <= 2:
        return 1.0
    if T > 12:
        return 0.0
    total_ways = sum(ways_to_sum(k) for k in range(T, 13))
    return total_ways / 36.0

# Closed-form versions (same results)
def p_sum_ge_closed(T: int) -> float:
    if T <= 2:
        return 1.0
    if T > 12:
        return 0.0
    if T <= 7:
        ways = 36 - (T - 2) * (T - 1) // 2
    else:
        m = 13 - T
        ways = m * (m + 1) // 2
    return ways / 36.0

# Example usage / table generation
if __name__ == "__main__":
    print(f"{'T':>3} | {'P(sum>=T)':>10} | Fraction")
    print("-" * 32)
    for T in range(2, 13):
        p = p_sum_ge(T)
        ways = sum(ways_to_sum(k) for k in range(T, 13))
        print(f"{T:3d} | {p:10.4f} | {ways}/36")
