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
  let d = n - 1n;
  let s = 0;
  while ((d & 1n) === 0n) { d >>= 1n; s++; }
  for (const a of MR_BASES) {
    const ab = BigInt(a);
    if (ab >= n) continue;
    let x = modPow(ab, d, n);
    if (x === 1n || x === n - 1n) continue;
    let composite = true;
    for (let r = 1; r < s; r++) {
      x = modPow(x, 2n, n);
      if (x === n - 1n) { composite = false; break; }
    }
    if (composite) return false;
  }
  return true;
}

function integerNthRoot(n: bigint, k: number): bigint {
  if (k <= 0) throw new Error("k must be positive");
  if (n < 2n || k === 1) return n < 0n ? 0n : n;
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
    if (p < 2n) break;
    if (p ** BigInt(k) === n && isPrime(p)) return { p, k };
  }
  return null;
}

function totient(m: bigint): bigint {
  let result = m;
  let x = m;
  for (let p = 2n; p * p <= x; p += p === 2n ? 1n : 2n) {
    if (x % p === 0n) {
      while (x % p === 0n) x /= p;
      result -= result / p;
    }
  }
  if (x > 1n) result -= result / x;
  return result;
}

function primesUpTo(limit: bigint): bigint[] {
  if (limit < 2n) return [];
  const n = Number(limit);
  if (!Number.isSafeInteger(n)) throw new Error("sieve bound exceeds Number.MAX_SAFE_INTEGER");
  const mark = new Uint8Array(n + 1);
  const out: bigint[] = [];
  for (let i = 2; i <= n; i++) {
    if (mark[i]) continue;
    out.push(BigInt(i));
    if (i <= Math.floor(n / i)) {
      for (let m = i * i; m <= n; m += i) mark[m] = 1;
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
  const window = n < 1000n ? n + 300n : n + n / 8n + 300n;
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
  if (best === null) throw new Error("prime-power window too small");
  return best;
}

function orbitCount(q: bigint, m: number): bigint {
  if (m <= 0 || q < 2n) return 0n;
  let sum = 0n;
  for (let d = 1; d <= m; d++) {
    if (m % d === 0) sum += totient(BigInt(m / d)) * q ** BigInt(d);
  }
  return sum / BigInt(m);
}

function fixedPairSplit(q: bigint) {
  return { fixed: q, pairs: (q * q - q) / 2n, total: q * q };
}

function divisorSignature(k: number): number[] {
  const div: number[] = [];
  for (let d = 1; d <= k; d++) if (k % d === 0) div.push(d);
  return div;
}

function longestChainLength(k: number): number {
  let omega = 0;
  let x = k;
  for (let p = 2; p * p <= x; p++) {
    while (x % p === 0) { omega++; x = Math.floor(x / p); }
  }
  if (x > 1) omega++;
  return omega + 1;
}

// ---------------------------------------------------------------------------
// Opaque brands. Numerical bigints cannot inhabit these.
// ---------------------------------------------------------------------------

declare const OrbitRepresentativeBrand: unique symbol;
export type OrbitRepresentative = bigint & { readonly [OrbitRepresentativeBrand]: true };

declare const StabilizerOrderBrand: unique symbol;
export type StabilizerOrder = bigint & { readonly [StabilizerOrderBrand]: true };

export function orbitRepresentative(raw: bigint): OrbitRepresentative {
  return raw as OrbitRepresentative;
}
export function stabilizerOrder(raw: bigint): StabilizerOrder {
  return raw as StabilizerOrder;
}

// ---------------------------------------------------------------------------
// VECTOR / STRUCTURAL SPACE
// existence, candidate objects, inclusion, lattice, arithmetic neighborhood
// ---------------------------------------------------------------------------

export interface StructuralCandidate {
  kind: "existence" | "candidate" | "inclusion" | "lattice" | "neighborhood";
  test: "T1" | "T2" | "T5" | "T6";
  q: bigint;
  k?: number;
  label: string;
  divisors?: number[];
  chain?: number;
}

export interface StructuralSpace {
  n: bigint;
  candidates: StructuralCandidate[];
}

function structuralSpace(n: bigint): StructuralSpace {
  const candidates: StructuralCandidate[] = [];
  const below = largestPrimePowerBelow(n);
  const above = smallestPrimePowerAbove(n);

  if (below > 1n) {
    candidates.push({ kind: "neighborhood", test: "T6", q: below, label: `below ${below}` });
  }
  if (above > 1n) {
    candidates.push({ kind: "neighborhood", test: "T6", q: above, label: `above ${above}` });
  }

  const self = primePowerFactor(n);
  if (self) {
    candidates.push({
      kind: "existence",
      test: "T1",
      q: n,
      k: self.k,
      label: `GF(${self.p}^${self.k})`,
      divisors: divisorSignature(self.k),
      chain: longestChainLength(self.k),
    });
  }

  const mult = primePowerFactor(n + 1n);
  if (mult) {
    candidates.push({
      kind: "candidate",
      test: "T2",
      q: n + 1n,
      k: mult.k,
      label: `GF(${mult.p}^${mult.k})*`,
      divisors: divisorSignature(mult.k),
      chain: longestChainLength(mult.k),
    });
  }

  for (const s of [...candidates]) {
    if ((s.test === "T1" || s.test === "T2") && s.k) {
      candidates.push({
        kind: "lattice",
        test: "T5",
        q: s.q,
        k: s.k,
        label: `divisors(${s.k})`,
        divisors: divisorSignature(s.k),
        chain: longestChainLength(s.k),
      });
      candidates.push({
        kind: "inclusion",
        test: "T5",
        q: s.q,
        k: s.k,
        label: `chain ${longestChainLength(s.k)}`,
        chain: longestChainLength(s.k),
      });
    }
  }

  return { n, candidates };
}

// ---------------------------------------------------------------------------
// DYNAMIC / INTERACTION SPACE
// action, orbit, fixed point, pair structure, stabilizer
// Counts only. Branded reps and stabilizer orders are not created here.
// ---------------------------------------------------------------------------

export interface T4Match {
  q: bigint;
  fixed: bigint;
  pairs: bigint;
  total: bigint;
  matches: ("fixed" | "pairs" | "total")[];
}

export interface InteractionCandidate {
  kind: "action" | "orbit" | "fixed" | "pair" | "stabilizer";
  test: "T3" | "T4";
  q: bigint;
  m?: number;
  orbits?: bigint;
  t4?: T4Match;
}

export interface InteractionSpace {
  n: bigint;
  candidates: InteractionCandidate[];
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

function interactionSpace(n: bigint, structural: StructuralSpace): InteractionSpace {
  const seedQs = structural.candidates.map(c => c.q);
  const windowQs = [2n, 3n, 4n, 5n, 7n, 8n, 9n, 16n, 25n, 27n, 32n, 81n];
  const qs = [...new Set([...seedQs, ...windowQs])];
  const ms = [1, 2, 3, 4, 5, 6, 8];
  const candidates: InteractionCandidate[] = [];

  for (const q of qs) {
    if (q < 2n) continue;
    for (const m of ms) {
      if (orbitCount(q, m) === n) {
        candidates.push({ kind: "orbit", test: "T3", q, m, orbits: n });
        candidates.push({ kind: "action", test: "T3", q, m, orbits: n });
      }
    }
  }

  for (const t4 of t4Matches(n, qs)) {
    if (t4.matches.includes("fixed")) {
      candidates.push({ kind: "fixed", test: "T4", q: t4.q, t4 });
    }
    if (t4.matches.includes("pairs")) {
      candidates.push({ kind: "pair", test: "T4", q: t4.q, t4 });
    }
    if (t4.matches.includes("total")) {
      candidates.push({ kind: "stabilizer", test: "T4", q: t4.q, t4 });
    }
  }

  return { n, candidates };
}

/** Actual state under action. Only a recognition payment may construct this. */
export interface DynamicField {
  q: bigint;
  m: number;
  action: "frobenius_q";
  orbitReps: readonly OrbitRepresentative[];
  stabilizerOrder: StabilizerOrder;
}

// ---------------------------------------------------------------------------
// RECOGNITION SPACE
// object map, arrow map, action intertwining, orbit compatibility,
// stabilizer preservation, π₀ compatibility
// Unpaid by default. Numerical evidence cannot set these.
// ---------------------------------------------------------------------------

export interface FunctorContract {
  objectMap: boolean;
  arrowMap: boolean;
  actionIntertwining: boolean;
  orbitCompatibility: boolean;
  stabilizerPreservation: boolean;
  pi0Compatibility: boolean;
}

export type Stage =
  | "NUMERICAL"
  | "RELATIONAL_CANDIDATE"
  | "FUNCTOR_CONTRACT"
  | "RECOGNIZED";

export interface RecognitionSpace {
  contract: FunctorContract;
  stage: Stage;
}

function unpaidContract(): FunctorContract {
  return {
    objectMap: false,
    arrowMap: false,
    actionIntertwining: false,
    orbitCompatibility: false,
    stabilizerPreservation: false,
    pi0Compatibility: false,
  };
}

function recognitionSpace(): RecognitionSpace {
  return { contract: unpaidContract(), stage: "NUMERICAL" };
}

export function contractPaid(c: FunctorContract): boolean {
  return c.objectMap
    && c.arrowMap
    && c.actionIntertwining
    && c.orbitCompatibility
    && c.stabilizerPreservation
    && c.pi0Compatibility;
}

// ---------------------------------------------------------------------------
// Assembly. Three spaces stay distinct.
// ---------------------------------------------------------------------------

export interface Evidence {
  structural: StructuralSpace;
  interaction: InteractionSpace;
  recognition: RecognitionSpace;
  note: string;
}

export function evidence(n: bigint): Evidence {
  const structural = structuralSpace(n);
  const interaction = interactionSpace(n, structural);
  const recognition = recognitionSpace();

  const notes: string[] = [];
  const orbits = interaction.candidates.filter(c => c.kind === "orbit");
  if (orbits.length > 1) notes.push("T3 not injective");
  if (n === 80n) notes.push("T2 |GF(81)×|=80 distinct from O(9,2)=45");
  if (n === 45n) notes.push("T3 O(9,2)=45 distinct from |GF(81)×|");
  if (!contractPaid(recognition.contract)) notes.push("functor contract unpaid");

  return { structural, interaction, recognition, note: notes.join("; ") };
}

console.log(primePowerFactor(19683n));
console.log(orbitCount(3n, 4), orbitCount(4n, 3));
console.log(orbitCount(9n, 2));
console.log(evidence(10n));
console.log(evidence(24n));
console.log(evidence(80n));
console.log(evidence(45n));
console.log(evidence(196830n));
