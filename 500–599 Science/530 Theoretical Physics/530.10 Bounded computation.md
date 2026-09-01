# Bounded computation
Part of the ULTIMATE LONG‑TERM BOUND series
- Capped by: Lloyd, Bremermann, Margolus–Levitin, Landauer
- Not capped by: holography directly

**Bounded computation** means *no algorithm, no machine, no mathematical process can run with unbounded iteration, unbounded time, unbounded memory, or unbounded precision*. Every computation has a **finite maximum depth**, fixed by the physical ceilings of the universe. This is the ultrafinitist computational universe.

**Bounded computation** means:

> Every computation has a finite maximum iteration depth  
> determined by physical information and computation limits.

This replaces:

- infinite loops  
- infinite recursion  
- infinite precision  
- infinite runtime  
- infinite memory  
- infinite Turing tapes  

with:

- finite iteration depth  
- finite recursion depth  
- finite precision  
- finite runtime  
- finite memory  
- finite automata  

## **Classical computation assumptions**
: **Infinite resources**

Classical mathematics and classical computer science assume:

- infinite tape (Turing machines)  
- infinite runtime  
- infinite memory  
- infinite precision  
- infinite iteration depth  
- infinite recursion depth  
- infinite branching  

All of these require **unbounded potential infinity**.

## **Physical ceilings forcings**
: **finite computation depth**

Every computation consumes:

- **information capacity**  
- **operations**  
- **energy**  
- **time**  
- **precision**  
- **state transitions**

All of these are capped by the physical limits:

- **Seth Lloyd’s bound** — max ops in the universe  
- **Bremermann’s limit** — max bits/s/kg  
- **Margolus–Levitin bound** — quantum speed limit  
- **Landauer limit** — energy cost per bit erased  
- **Heat‑death limit** — computation eventually stops  
- **Planck cutoffs** — minimum time/energy/action  
- **Cosmological information limit** — finite total bits in universe

Therefore:

> **No computation can exceed a finite maximum iteration depth.**

Call this depth $N_{\max}$.

## **Actual bounded computation**
### **Finite iteration depth**
Instead of:

$$
\text{for } n = 1 \text{ to } \infty
$$

Have:

$$
\text{for } n = 1 \text{ to } N_{\max}
$$

### **Finite recursion depth**
Instead of:

$$
\text{Recursion depth} = \infty
$$

Have:

$$
\text{Recursion depth} \le N_{\max}
$$

### **Finite runtime**
Instead of:

$$
T = \infty
$$

Have:

$$
T \le T_{\max}
$$

### **Finite memory**
Instead of:

$$
\text{Memory} = \infty
$$

Have:

$$
\text{Memory} \le I_{\max}
$$

### **Finite precision**
Instead of:

$$
\text{Precision} = \infty
$$

Have:

$$
\text{Precision} \le N_{\max}
$$

This is the physically realizable computation universe.


## **Consequences**

---

: **Turing machines become finite automata**

A classical Turing machine has:

- infinite tape  
- infinite time  
- infinite precision  

Bounded computation replaces this with:

- finite tape  
- finite time  
- finite precision  
- finite state transitions  

A Turing machine becomes a **finite automaton with a large but finite state space**.

---

: **Complexity classes collapse**

Classical complexity theory assumes:

- unlimited input size  
- unlimited time  
- unlimited memory  

Bounded computation implies:

- **P, NP, EXP, PSPACE** are only meaningful *up to the physical cutoff*  
- beyond that cutoff, the classes collapse because no computation can exceed the universe’s limits  
- “hard problems” become physically impossible beyond certain sizes

: **Unfinite algorithms do not exist**

Algorithms that require:

- infinite loops  
- infinite precision  
- infinite recursion  
- infinite refinement  
- infinite convergence  

are not physically realizable.

They are mathematical fictions.

---

: **Computation is a finite resource**

The universe has:

- finite total operations  
- finite total bits  
- finite total time  
- finite total precision  
- finite total representational depth

Computation is not an abstract infinite process.  

It is a **finite consumable resource**.

## Future work

- **finite computation operator**  
- **finite Turing machine model**  
- **finite complexity theory**  
