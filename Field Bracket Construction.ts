const MR_BASES = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37];

function modPow(base: bigint, exp: bigint, mod: bigint): bigint {
  let r = 1n;
  base %= mod;
  while (exp > 0n) {
    if (exp & 1n) r = (r * base) % mod;
    base = (base * base) % mod;
    exp >>= 1n;
  }
  return r;
}

function isPrime(n: bigint): boolean {
  if (n < 2n) return false;
  if (n === 2n || n === 3n) return true;
  if ((n & 1n) === 0n) return false;
  let d = n - 1n, s = 0;
  while ((d & 1n) === 0n) { d >>= 1n; s++; }
  for (const a of MR_BASES) {
    const ab = BigInt(a);
    if (ab >= n) continue;
    let x = modPow(ab, d, n);
    if (x === 1n || x === n - 1n) continue;
    let comp = true;
    for (let r = 1; r < s; r++) {
      x = modPow(x, 2n, n);
      if (x === n - 1n) { comp = false; break; }
    }
    if (comp) return false;
  }
  return true;
}

/** Largest r such that r^k <= n. Integer-exact. */
function integerNthRoot(n: bigint, k: number): bigint {
  if (k <= 0) throw new Error("k must be positive");
  if (n < 2n) return n;
  if (k === 1) return n;
  let lo = 1n;
  let hi = n;
  while (lo < hi) {
    const mid = (lo + hi + 1n) >> 1n;
    let pow = 1n;
    let overflow = false;
    for (let i = 0; i < k; i++) {
      if (pow > n / mid) { overflow = true; break; }
      pow *= mid;
    }
    if (!overflow && pow <= n) lo = mid;
    else hi = mid - 1n;
  }
  return lo;
}

function primePowerFactor(n: bigint): { p: bigint; k: number } | null {
  if (n < 2n) return null;
  if (isPrime(n)) return { p: n, k: 1 };
  for (let k = 2; k <= 60; k++) {
    const p = integerNthRoot(n, k);
    if (p >= 2n && p ** BigInt(k) === n && isPrime(p)) return { p, k };
    if (p < 2n) break;
  }
  return null;
}

function totient(m: bigint): bigint {
  let r = m, x = m;
  for (let p = 2n; p * p <= x; p += p === 2n ? 1n : 2n) {
    if (x % p === 0n) {
      while (x % p === 0n) x /= p;
      r -= r / p;
    }
  }
  if (x > 1n) r -= r / x;
  return r;
}

/** T3 definition: O(q,m) = (1/m) Σ_{d|m} φ(m/d) q^d. */
function orbitCount(q: bigint, m: number): bigint {
  if (m <= 0) return 0n;
  let sum = 0n;
  for (let d = 1; d <= m; d++) {
    if (m % d === 0) sum += totient(BigInt(m / d)) * q ** BigInt(d);
  }
  return sum / BigInt(m);
}

function fixedPairSplit(q: bigint) {
  return {
    fixed: q,
    pairs: (q * q - q) / 2n,
    total: q * q,
  };
}

/** Divisor-lattice signature. Not a chain length. */
function divisorSignature(k: number): number[] {
  const div: number[] = [];
  for (let d = 1; d <= k; d++) if (k % d === 0) div.push(d);
  return div;
}

/** Longest chain in the divisor lattice has length Ω(k)+1. */
function longestChainLength(k: number): number {
  let omega = 0, x = k;
  for (let p = 2; p * p <= x; p++) {
    while (x % p === 0) { omega++; x = Math.floor(x / p); }
  }
  if (x > 1) omega++;
  return omega + 1;
}

/** Primes in [2, limit]. Sieve bound must fit in Number. */
function primesUpTo(limit: bigint): bigint[] {
  if (limit < 2n) return [];
  const n = Number(limit);
  if (!Number.isSafeInteger(n)) throw new Error("sieve bound exceeds safe integer");
  const mark = new Uint8Array(n + 1);
  const out: bigint[] = [];
  for (let p = 2; p <= n; p++) {
    if (mark[p]) continue;
    out.push(BigInt(p));
    if (p <= Math.floor(n / p)) {
      for (let m = p * p; m <= n; m += p) mark[m] = 1;
    }
  }
  return out;
}

function largestPrimePowerBelow(n: bigint): bigint {
  if (n <= 2n) return 0n;
  let best = 0n;
  for (const p of primesUpTo(n - 1n)) {
    let pk = p;
    while (pk < n) {
      if (pk > best) best = pk;
      if (pk > (n - 1n) / p) break;
      pk *= p;
    }
  }
  return best;
}

function smallestPrimePowerAbove(n: bigint): bigint {
  const window = n < 1000n ? n + 200n : n + n / 10n;
  let best: bigint | null = null;
  for (const p of primesUpTo(window)) {
    if (p > n && (best === null || p < best)) best = p;
    let pk = p;
    while (pk <= n) {
      if (pk > window / p) break;
      pk *= p;
    }
    if (pk > n && (best === null || pk < best)) best = pk;
  }
  if (best === null) throw new Error("window too small");
  return best;
}

// --- types: evidence is not a dynamic field ---

export interface StructuralCandidate {
  kind: "T1" | "T2" | "T5" | "T6";
  q: bigint;
  k?: number;
  label: string;
  divisors?: number[];
  chain?: number;
}

export interface T4Match {
  q: bigint;
  fixed: bigint;
  pairs: bigint;
  total: bigint;
  matches: ("fixed" | "pairs" | "total")[];
}

export interface InteractionCandidate {
  kind: "T3" | "T4";
  q: bigint;
  m?: number;
  orbits?: bigint;
  t4?: T4Match;
}

export type Stage =
  | "NUMERICAL"
  | "RELATIONAL_CANDIDATE"
  | "FUNCTOR_CONTRACT"
  | "RECOGNIZED";

/** What the tests returned. Not a state under action. */
export interface Evidence {
  n: bigint;
  structural: StructuralCandidate[];
  interaction: InteractionCandidate[];
  stage: Stage;
  note: string;
}

/**
 * Reserved. State under an action.
 * Not constructed by the numerical layer.
 */
export interface DynamicField {
  q: bigint;
  m: number;
  action: "frobenius_q";
  orbitReps: bigint[];
  stabilizerOrder: bigint;
}

function t4Matches(n: bigint, qs: bigint[]): T4Match[] {
  const out: T4Match[] = [];
  for (const q of qs) {
    if (q < 2n) continue;
    const { fixed, pairs, total } = fixedPairSplit(q);
    const matches: T4Match["matches"] = [];
    if (n === fixed) matches.push("fixed");
    if (n === pairs) matches.push("pairs");
    if (n === total) matches.push("total");
    if (matches.length) out.push({ q, fixed, pairs, total, matches });
  }
  return out;
}

/** Candidate window, not the definition of T3. */
function t3Window(n: bigint, qs: bigint[], ms: number[]): InteractionCandidate[] {
  const out: InteractionCandidate[] = [];
  for (const q of qs) {
    if (q < 2n) continue;
    for (const m of ms) {
      if (orbitCount(q, m) === n) out.push({ kind: "T3", q, m, orbits: n });
    }
  }
  return out;
}

export function evidence(n: bigint): Evidence {
  const below = largestPrimePowerBelow(n);
  const above = smallestPrimePowerAbove(n);
  const structural: StructuralCandidate[] = [];

  if (below > 1n) structural.push({ kind: "T6", q: below, label: `below ${below}` });
  if (above > 1n) structural.push({ kind: "T6", q: above, label: `above ${above}` });

  const self = primePowerFactor(n);
  if (self) {
    structural.push({
      kind: "T1",
      q: n,
      k: self.k,
      label: `GF(${self.p}^${self.k})`,
      divisors: divisorSignature(self.k),
      chain: longestChainLength(self.k),
    });
  }

  const mult = primePowerFactor(n + 1n);
  if (mult) {
    structural.push({
      kind: "T2",
      q: n + 1n,
      k: mult.k,
      label: `GF(${mult.p}^${mult.k})*`,
      divisors: divisorSignature(mult.k),
      chain: longestChainLength(mult.k),
    });
  }

  for (const s of structural.filter(s => s.kind === "T1" || s.kind === "T2")) {
    if (s.k) {
      structural.push({
        kind: "T5",
        q: s.q,
        k: s.k,
        label: `divisors(${s.k})`,
        divisors: divisorSignature(s.k),
        chain: longestChainLength(s.k),
      });
    }
  }

  const seedQs = structural.map(s => s.q);
  const windowQs = [2n, 3n, 4n, 5n, 7n, 8n, 9n, 16n, 25n, 27n, 32n];
  const qs = [...new Set([...seedQs, ...windowQs])];
  const ms = [1, 2, 3, 4, 5, 6, 8];

  const interaction: InteractionCandidate[] = [
    ...t3Window(n, qs, ms),
    ...t4Matches(n, qs).map(t4 => ({ kind: "T4" as const, q: t4.q, t4 })),
  ];

  const notes: string[] = [];
  if (interaction.filter(i => i.kind === "T3").length > 1) notes.push("T3 not injective");
  if (n === 80n) notes.push("T2 |GF(81)×|=80 distinct from O(9,2)=45");
  if (n === 45n) notes.push("T3 O(9,2)=45 distinct from |GF(81)×|");

  return {
    n,
    structural,
    interaction,
    stage: "NUMERICAL",
    note: notes.join("; "),
  };
}

// witnesses
console.log("196830", primePowerFactor(196830n));          // 3^9? 3^9=19683; 196830 is not a prime power
console.log("3^9", primePowerFactor(19683n));
console.log("O(3,4)=O(4,3)", orbitCount(3n, 4), orbitCount(4n, 3));
console.log("O(3,2)=O(2,4)", orbitCount(3n, 2), orbitCount(2n, 4));
console.log("O(9,2)", orbitCount(9n, 2));
console.log("k=6", divisorSignature(6), longestChainLength(6));
console.log("T4 n=10 q=5", t4Matches(10n, [5n]));
console.log(evidence(10n));
console.log(evidence(24n));
console.log(evidence(80n));
console.log(evidence(45n));
