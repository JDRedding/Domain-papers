# Programming, core page
Rules summary 

Code is clean if it can be understood easily by everyone on the team. 
Clean code can be read and enhanced by a developer other than its original author. 
With understandability come readability, changeability, extensibility, and maintainability.

## Core Principles

## Understandability Tips
- Be consistent. If you do something a certain way, do all similar things the same way.
- Use explanatory variables.
- Encapsulate boundary conditions. They are hard to keep track of, so put the processing for them in one place.
- Prefer dedicated value objects to primitive types.
- Avoid logical dependency. Don’t write methods that work correctly only because of something else in the same class.
- Avoid negative conditionals.
- Avoid deep nesting; use guard clauses.

## General Rules
- Follow standard conventions.
- Follow the Boy Scout Rule: leave the campground cleaner than you found it.
- Always find the root cause of a problem.
- Focus on fundamentals, not syntax. Syntax can be looked up; concepts must be understood.
- Avoid premature optimization. Optimize only when you know the bottleneck. Clear code first, performance second.
- Refactor continuously. Code will not be perfect the first time.

### 1. Keep It Simple (KISS)
- Simplicity reduces bugs and makes code easier to understand.
- Avoid cleverness. Prefer straightforward logic and clear variable names.
- Simpler is always better. Reduce complexity as much as possible.

### 2. Don’t Repeat Yourself (DRY)
- Duplicate logic increases maintenance cost and error risk.
- Extract common behavior into functions, modules, or abstractions.

### 3. You Aren’t Gonna Need It (YAGNI)
- Don’t build features “just in case.”
- Write only what current requirements demand to avoid bloat.

### 4. Single Responsibility & Separation of Concerns
- Each class or module should have one reason to change.
- Keep data, logic, and presentation separate (for example, MVC).

### 5. SOLID
- **Single Responsibility**
- **Open/Closed:** extend, don’t modify
- **Liskov Substitution**
- **Interface Segregation**
- **Dependency Inversion**

These principles improve extensibility and maintainability.

### 6. Law of Demeter (Least Knowledge)
- A class should know only its direct dependencies.
- Modules should talk only to their direct collaborators.
- This reduces coupling and increases maintainability.

## Design Rules
- Keep configurable data at high levels.
- Prefer polymorphism to `if/else` or `switch/case`.
- Prefer composition over inheritance for flexible behavior.
- Separate multi-threading code.
- Prevent over-configurability.
- Use dependency injection.


## Naming Rules
- Choose descriptive and unambiguous names.
- Make meaningful distinctions.
- Use pronounceable names.
- Use searchable names.
- Replace magic numbers with named constants.
- Avoid encodings. Don’t append prefixes or type information.
- Good naming reduces the need for comments.

## Function Rules
- Keep functions small.
- Do one thing.
- Use descriptive names.
- Prefer fewer arguments.
- Have no side effects.
- Don’t use flag arguments. Split the method into independent methods that the client can call without a flag.

## Comment & Documentation Rules
- Always try to explain yourself in code.
- Comment *why*, not *what*.
- Don’t be redundant.
- Don’t add obvious noise.
- Don’t use closing-brace comments.
- Don’t comment out code. Just remove it.
- Use comments to explain intent, clarify tricky logic, and warn of consequences.
- Document intent, assumptions, and non-obvious behavior.

## Source Code Structure
- Separate concepts vertically.
- Related code should appear vertically dense.
- Declare variables close to their usage.
- Dependent functions should be close.
- Similar functions should be close.
- Place functions in the downward direction.
- Keep lines short.
- Don’t use horizontal alignment.
- Use whitespace to associate related things and disassociate weakly related things.
- Don’t break indentation.
- Keep code consistent in style and structure.

## Objects and Data Structures
- Hide internal structure.
- Prefer data structures.
- Avoid hybrid structures (half object and half data).
- Keep objects small.
- Do one thing.
- Use a small number of instance variables.
- A base class should know nothing about its derivatives.
- It is better to have many functions than to pass code into a function to select a behavior.
- Prefer non-static methods to static methods.

## Tests & Review
- One assert per test.
- Tests should be readable, fast, independent, and repeatable.
- Good developers test their code and review others’ work.

## Code feels
- **Rigidity:** The software is difficult to change. A small change causes a cascade of subsequent changes.
- **Fragility:** The software breaks in many places because of a single change.
- **Immobility:** You cannot reuse parts of the code in other projects because of the involved risks and high effort.
- **Needless complexity.**
- **Needless repetition.**
- **Opacity:** The code is hard to understand.

## APPENDIX: formulas

Notation matches common practice. These are the standard **measurable stand-ins** for the one-pager’s ideas. Clean-code rules are qualitative; these formulas are what people use when they try to quantify them. They are proxies, not proofs.

---

## Notation used throughout

| Symbol | Meaning |
|---|---|
| $G=(N,E)$ | control-flow graph of a module |
| $n=\|N\|$, $e=\|E\|$ | nodes, edges |
| $p$ | connected components (usually $1$ per module) |
| $\pi$ | number of predicate / decision nodes |
| $\eta_1,\eta_2$ | distinct operators, distinct operands |
| $N_1,N_2$ | total operator / operand occurrences |
| $\mathrm{LOC}$ | lines of code |
| $C_a,C_e$ | afferent / efferent coupling |
| $\mathrm{fan\text{-}in},\mathrm{fan\text{-}out}$ | incoming / outgoing information flow |

---

## Complexity (KISS, small functions, shallow nesting)

**McCabe cyclomatic complexity** — number of linearly independent paths; lower is simpler, and it is also a lower bound on branch-coverage tests.

$$
v(G)=e-n+2p
$$

For a single connected module ($p=1$):

$$
v(G)=e-n+2=\pi+1
$$

A straight-line function has $v(G)=1$. Each `if`, loop, `case`, `&&`, `||`, `catch` typically adds $1$.

**Essential complexity** (how much unstructured control remains after reducing structured constructs):

$$
ev(G)=v(G)-m
$$

where $m$ is the number of proper structured subgraphs that can be collapsed.

---

## Vocabulary and volume (opacity, “explain yourself in code”)

**Halstead software science** treats source as operators and operands.

$$
\eta=\eta_1+\eta_2,\qquad N=N_1+N_2
$$

Estimated length:

$$
\hat{N}=\eta_1\log_2\eta_1+\eta_2\log_2\eta_2
$$

Volume (bits of “information content”):

$$
V=N\log_2\eta
$$

Difficulty and effort:

$$
D=\frac{\eta_1}{2}\cdot\frac{N_2}{\eta_2},\qquad E=D\cdot V
$$

Time and estimated bugs (Halstead’s original, rough):

$$
T=\frac{E}{18},\qquad B=\frac{E^{2/3}}{3000}
$$

High $V$ and $D$ track **opacity** and **needless complexity**.

---

## Maintainability (changeability)

A common **Maintainability Index** form (Oman / Hagemeister family; constants vary by tool):

$$
\mathrm{MI}=171-5.2\ln\bar{V}-0.23\,\overline{v(G)}-16.2\ln\overline{\mathrm{LOC}}+50\sin\sqrt{2.46\,\mathrm{CM}}
$$

where $\bar{V}$ is average Halstead volume, $\overline{v(G)}$ average cyclomatic complexity, $\overline{\mathrm{LOC}}$ average size, and $\mathrm{CM}$ comment ratio in $[0,1]$.

Typical reading (rule of thumb, not a law):

- $\mathrm{MI}>85$ — easier to change  
- $65\le\mathrm{MI}\le85$ — moderate  
- $\mathrm{MI}<65$ — rigid / opaque  

---

## Coupling (Law of Demeter, DIP, “least knowledge”)

**Henry–Kafura information-flow complexity:**

$$
C=L\cdot(\mathrm{fan\text{-}in}\cdot\mathrm{fan\text{-}out})^2
$$

$L$ is length (LOC or $v(G)$). The square models nonlinear cost of many collaborators.

**Robert Martin package metrics:**

$$
I=\frac{C_e}{C_a+C_e}\in[0,1]
$$

$$
A=\frac{N_A}{N_A+N_C}\in[0,1]
$$

Distance from the “main sequence”:

$$
D=\lvert A+I-1\rvert
$$

- $I\to 0$: stable (many dependents; change is expensive — rigidity)  
- $I\to 1$: unstable (depends on many others — fragility)  
- Ideal: abstract packages stable ($A$ high, $I$ low)

**CK coupling between object classes** $CBO(c)$ = number of other classes $c$ uses or is used by. Law of Demeter wants this small and only *direct*.

---

## Cohesion and SRP (one reason to change)

**LCOM** (Chidamber–Kemerer). For methods of a class, let $I_i$ be the set of instance variables used by method $i$:

$$
P=\{(I_i,I_j):I_i\cap I_j=\emptyset\},\qquad
Q=\{(I_i,I_j):I_i\cap I_j\neq\emptyset\}
$$

$$
\mathrm{LCOM}=\begin{cases}
|P|-|Q| & \text{if }|P|>|Q|\\
0 & \text{otherwise}
\end{cases}
$$

High LCOM $\approx$ methods that do not share state $\approx$ the class has more than one job.

**Weighted methods per class:**

$$
\mathrm{WMC}=\sum_{i=1}^{k}c_i
$$

often $c_i=v(G_i)$. Large WMC is a fat module.

---

## Inheritance vs composition

$$
\mathrm{DIT}(c)=\text{depth of }c\text{ in the inheritance tree}
$$

$$
\mathrm{NOC}(c)=\text{number of immediate subclasses}
$$

Deep DIT / wide NOC increases Liskov risk: substitutes must honor the parent contract everywhere.

---

## DRY as redundancy (information theory sketch)

If a concept is encoded $k$ times, a change must hit all copies. A crude cost model:

$$
\mathrm{Cost}_{\text{change}}\propto k\cdot p_{\text{miss}}
$$

Normalized compression / token entropy of a corpus is sometimes used as a duplication proxy: repeated fragments lower empirical entropy. That is a *measurement idea*, not a design law.

---

## Tests

Minimum paths for basis-path testing:

$$
\text{tests}_{\min}\ge v(G)
$$

Defect density:

$$
\mathrm{DD}=\frac{\#\text{ defects}}{\mathrm{KLOC}}
\quad\text{or}\quad
\frac{\#\text{ defects}}{\#\text{ modules}}
$$

---

## Runtime cost (optimize only the bottleneck)

Asymptotic cost of an algorithm $A$ on input size $n$:

$$
T_A(n)=\Theta(f(n))
$$

Amdahl after optimizing a fraction $P$ of runtime by speedup $S$:

$$
\text{Speedup}=\frac{1}{(1-P)+P/S}
$$

That is why “clear code first, measure second” is rational: if $P$ is small, $S$ barely moves the system.

---

## Mapping back to the feels

| Feels | Typical numeric signature |
|---|---|
| Rigidity | high $C_a$, low $I$ on concrete packages, high $CBO$ |
| Fragility | high $C_e$, high $v(G)$, high fan-out |
| Immobility | high $C=L(\mathrm{fan\text{-}in}\cdot\mathrm{fan\text{-}out})^2$ |
| Needless complexity | high $v(G)$, high $V$, high $D$, deep DIT |
| Needless repetition | high $k$ copies, low entropy / high clone ratio |
| Opacity | high $V$, low MI, long functions, high nesting |
