# Brainfuck Abstract Machine Formal Semantics

## Machine Components

Let

$$
\mathcal{M} =
(T,dp,pc,S,I,O,P,m)
$$

where

```text
T   = Memory Tape
dp  = Data Pointer register
pc  = Program Counter register
S   = Loop Stack
I   = Input stream
O   = Output stream
P   = Instruction Memory
m   = Cell modulus (typically 256)
```

State space:

$$
\Sigma =
\{
(T,dp,pc,S,I,O)
\}
$$

Program memory is fixed during execution.

## Hardware Control Equation

The architecture may be summarized as

$$
\sigma_{k+1} =
F
\Bigl(
\sigma_k,
D(P(pc_k))
\Bigr).
$$

where

```text
Instruction Memory → P(pc)
Decoder            → D(...)
Control Signals    → micro-operations
ALU                → arithmetic update
Data Pointer       → address generation
Memory Tape        → data storage
Loop Stack         → loop control
I/O Unit           → external interface
```

The complete Brainfuck abstract machine therefore satisfies

$$
\boxed{
\sigma_{k+1} =
F
(
\sigma_k,
P(pc_k)
)
}
$$

which is the formal state-evolution law corresponding to the hardware architecture.

### Notes 

- The stack is only required for the dynamic jump-back of `]`. The static `match` function is sufficient for a pure jump-table implementation (common in optimised interpreters).
- Some formalisations treat the loop stack as optional and rely solely on the precomputed `match` table; both are equivalent.
- The tape is formally infinite in both directions; real implementations usually use a finite array with dynamic growth or a fixed large size.
- Input/output are treated as streams; the precise type of the streams (list of bytes, lazy stream, etc.) can be made more categorical if desired.

---

# Memory Tape

Tape:

$$
T:\mathbb Z \to \mathbb Z_m
$$

where

$$
\mathbb Z_m =
\mathbb Z / m\mathbb Z.
$$

Typical implementation:

$$
m=256.
$$

Initial state:

$$
T(x)=0
\qquad
\forall x\in\mathbb Z.
$$

Cell read:

$$
v=T(dp).
$$

Cell write:

$$
T[dp \mapsto a].
$$

Meaning

$$
T'(x) =
\begin{cases}
a & x=dp\\
T(x) & x\neq dp
\end{cases}
$$

---

# Instruction Memory

Program:

$$
P=(p_0,p_1,\ldots,p_{n-1})
$$

with

$$
p_i
\in
\{>,<,+,-,.,,,[,]\}.
$$

Instruction fetch:

$$
IR=P(pc).
$$

The instruction register (IR) is implicit in most software interpreters but explicit in hardware.

---

# Program Counter

Program counter:

$$
pc \in \{0,\ldots,n\}.
$$

Halting condition:

$$
pc \ge n.
$$

Execution relation:

$$
\sigma
\rightarrow
\sigma'
$$

for machine states

$$
\sigma,\sigma' \in \Sigma.
$$

---

# Instruction Decoder

Decoder map:

$$
D :
\{>,<,+,-,.,,,[,]\}
\to
\mathcal U
$$

where

$$
\mathcal U
$$

is the set of micro-operations.

Formally,

$$
u=D(P(pc)).
$$

The decoder converts opcode symbols into control signals.

---

# Data Pointer Unit

Pointer register:

$$
dp\in\mathbb Z.
$$

Movement operations:

$$
dp'=dp+1
$$

and

$$
dp'=dp-1.
$$

These correspond to address-generation hardware.

---

# ALU

The ALU performs modular arithmetic on the active cell.

Increment:

$$
{ALU}_{+}(x) =
(x+1)\bmod m
$$

Decrement:

$$
{ALU}_{-}(x) =
(x-1)\bmod m.
$$

Unified form:

$$
{ALU}(x,\delta) =
(x+\delta)\bmod m
$$

where

$$
\delta\in\{-1,+1\}.
$$

---

# Transition Rules

## >

$$
(T,dp,pc,S,I,O)
\rightarrow
(T,dp+1,pc+1,S,I,O)
$$

---

## <

$$
(T,dp,pc,S,I,O)
\rightarrow
(T,dp-1,pc+1,S,I,O)
$$

---

## +

$$
(T,dp,pc,S,I,O)
\rightarrow
\Bigl(
T[dp\mapsto(T(dp)+1)\bmod m],
dp,
pc+1,
S,
I,
O
\Bigr)
$$

---

## -

$$
(T,dp,pc,S,I,O)
\rightarrow
\Bigl(
T[dp\mapsto(T(dp)-1)\bmod m],
dp,
pc+1,
S,
I,
O
\Bigr)
$$

---

## .

Output operation:

$$
b=T(dp).
$$

Output stream update:

$$
O' =
O \cdot {chr}(b).
$$

Transition:

$$
(T,dp,pc,S,I,O)
\rightarrow
(T,dp,pc+1,S,I,O').
$$

---

## ,

Let

$$
(a,I') =
{read}(I).
$$

Then

$$
(T,dp,pc,S,I,O)
\rightarrow
(
T[dp\mapsto a],
dp,
pc+1,
S,
I',
O
).
$$

EOF behavior is implementation defined.

---

# Matching-Bracket Function

Define

$$
{match}
:
\{0,\ldots,n-1\}
\to
\{0,\ldots,n-1\}
$$

such that

$$
P(i)='['
\Longleftrightarrow
P({match}(i))=']'
$$

and vice versa.

Also

$$
{match}
({match}(i)) =
i.
$$

---

# Loop Stack Formalization

Stack:

$$
S=(s_0,s_1,\ldots,s_k)
$$

Top element:

$$
{top}(S) =
s_k.
$$

Push:

$$
{push}(S,x) =
(s_0,\ldots,s_k,x).
$$

Pop:

$$
{pop}(S) =
(s_0,\ldots,s_{k-1}).
$$

---

# Loop Semantics

## [

If the current cell is zero:

$$
T(dp)=0
$$

then

$$
(T,dp,pc,S,I,O)
\rightarrow
(T,dp,{match}(pc)+1,S,I,O).
$$

Otherwise:

$$
T(dp)\neq0
$$

$$
(T,dp,pc,S,I,O)
\rightarrow
(T,dp,pc+1,{push}(S,pc),I,O).
$$

---

## ]

If

$$
T(dp)\neq0
$$

then

$$
(T,dp,pc,S,I,O)
\rightarrow
(T,dp,{top}(S),S,I,O).
$$

If

$$
T(dp)=0
$$

then

$$
(T,dp,pc,S,I,O)
\rightarrow
(T,dp,pc+1,{pop}(S),I,O).
$$

---

# Global Transition Function

The machine transition function is

$$
\delta :
\Sigma
\rightarrow
\Sigma.
$$

State evolution:

$$
\sigma_{k+1} =
\delta(\sigma_k).
$$

Execution trace:

$$
\sigma_0
\rightarrow
\sigma_1
\rightarrow
\sigma_2
\rightarrow
\cdots
\rightarrow
\sigma_f.
$$

---

## Appendix: Brainfuck Machine Block Semantics
This is essentially the hardware-block equivalent of the formal Brainfuck semantics, with explicit Instruction Memory → PC → Decoder → DP/ALU/Tape/I/O/Loop-Stack control paths.

Formal Hardware Architecture
```text
                           Address Bus
                                |
                                v

+------------------+     +-------------+     +----------------------+
| INSTRUCTION      |---->| PROGRAM     |---->| DECODER / CONTROL    |
| MEMORY           |     | COUNTER     |     | MICROCODE UNIT       |
|                  |     | (PC)        |     |                      |
| P = {p0,p1...}   |     | pc          |     | D(P(pc))             |
+------------------+     +-------------+     +----------+-----------+
                                                      |
                                               Control Signals
                                                      |
         +--------------------------------------------+------------------+
         |                                            |                  |
         v                                            v                  v

+------------------+                    +------------------+   +------------------+
| DATA POINTER     |<------------------>| MEMORY TAPE      |<->| I/O UNIT         |
| REGISTER (DP)    | Address            |                  |   |                  |
|                  |                    | T : Z -> Zm      |   | Input Stream I   |
| dp               |                    |                  |   | Output Stream O  |
+--------+---------+                    +---------+--------+   +------------------+
         |                                        ^
         |                                        |
         | Address                                | Value
         v                                        |
+------------------+                              |
| ADDRESS          |                              |
| GENERATOR        |                              |
| dp+1 , dp-1      |                              |
+--------+---------+                              |
         |                                        |
         +----------------+-----------------------+
                          |
                          v

                  +------------------+
                  |      ALU         |
                  |                  |
                  | x := x + 1 mod m |
                  | x := x - 1 mod m |
                  |                  |
                  +--------+---------+
                           |
                           |
                           v

                    T(dp) Updated


+---------------------------------------------------------------+
| LOOP CONTROL UNIT                                             |
|                                                               |
| match(pc)                                                     |
|                                                               |
|      +-----------------------------------------------+        |
|      | LOOP STACK S                                  |        |
|      |                                               |        |
|      | PUSH(pc)                                      |        |
|      | POP()                                         |        |
|      | TOP(S)                                        |        |
|      +----------------------+------------------------+        |
|                             |                                 |
|                             v                                 |
|                    Backward / Forward                         |
|                     PC Jump Control                           |
+-----------------------------+---------------------------------+
                              |
                              v

                        +-----------+
                        |    PC     |
                        | Update    |
                        +-----------+
```

State-flow view:
```text
σ = (T, dp, pc, S, I, O)

          FETCH
             |
             v
      P(pc) ------> Decoder
                        |
                        v
             +----------+----------+
             |                     |
             v                     v

      Data Ops              Loop Control
   (+,-,>,<,.,,)             ([ and ])

             |                     |
             +----------+----------+
                        |
                        v

                σ(k+1) = F(σ(k),P(pc))

                        |
                        v

      (T', dp', pc', S', I', O')
```

Control-path view:
```text
Instruction Memory
        |
        v
      [PC]
        |
        v
   Instruction
      Fetch
        |
        v
+----------------+
| Decoder / CU   |
+----------------+
   |    |    |
   |    |    +------> Loop Stack Control
   |    |
   |    +-----------> DP Control
   |
   +---------------> ALU Control
                          |
                          v
                    Memory Tape
                          |
                          v
                      I/O Unit
```

Mathematically:
```text
Instruction Memory : P(pc)

Decoder            : u = D(P(pc))

State              : σ = (T,dp,pc,S,I,O)

Transition         : σ(k+1) = F(σ(k),u)

ALU                : ALU(x,δ)=(x+δ) mod m

Memory Tape        : T : Z -> Zm

Loop Control       : pc' = match(pc)

Machine Evolution  : σ(k+1)=F(σ(k),P(pc))
```

## Appendix: Condensed Mathematics

### Machine and State Space

$$
\mathcal{M} = (T, dp, pc, S, I, O, P, m)
$$

$$
\Sigma = \{ (T, dp, pc, S, I, O) \}
$$

- $T : \mathbb{Z} \to \mathbb{Z}/m\mathbb{Z}$ (infinite tape, cells modulo $m$, typically $m=256$)
- $dp \in \mathbb{Z}$ (data pointer)
- $pc \in \{0, \dots, |P|\}$ (program counter; halt when $pc \ge |P|$)
- $S$ : stack of program counters (loop control)
- $I, O$ : input/output streams
- $P = (p_0, p_1, \dots, p_{n-1})$ with $p_i \in \{ \mathtt{>}, \mathtt{<}, \mathtt{+}, \mathtt{-}, \mathtt{.}, \mathtt{,}, \mathtt{[}, \mathtt{]} \}$

Initial state (usual convention):

$$
T_0(x) = 0 \quad \forall x, \quad dp_0 = 0, \quad pc_0 = 0, \quad S_0 = \varepsilon, \quad I_0 = \text{input}, \quad O_0 = \varepsilon
$$

### Global Transition

$$
\sigma_{k+1} = \delta(\sigma_k) = F\bigl(\sigma_k,\, P(pc_k)\bigr)
$$

(The decoder $D$ is optional; it simply maps the opcode to the corresponding micro-operation.)

### Instruction Rules

**Pointer movement**

$$
\begin{align*}
\mathtt{>} &\colon && (T, dp, pc, S, I, O) \to (T, dp+1, pc+1, S, I, O) \\
\mathtt{<} &\colon && (T, dp, pc, S, I, O) \to (T, dp-1, pc+1, S, I, O)
\end{align*}
$$

**Arithmetic (ALU)**

$$
\begin{align*}
\mathtt{+} &\colon && T' = T[dp \mapsto (T(dp)+1) \bmod m],\quad pc' = pc+1 \\
\mathtt{-} &\colon && T' = T[dp \mapsto (T(dp)-1) \bmod m],\quad pc' = pc+1
\end{align*}
$$

Unified form:

$$
\text{ALU}(x,\delta) = (x+\delta) \bmod m, \quad \delta \in \{-1,+1\}
$$

**I/O**

$$
\begin{align*}
\mathtt{.} &\colon && O' = O \cdot \mathrm{chr}(T(dp)),\quad pc' = pc+1 \\
\mathtt{,} &\colon && (a,I') = \mathrm{read}(I),\quad T' = T[dp \mapsto a],\quad pc' = pc+1
\end{align*}
$$

(EOF behaviour is implementation-defined; common choices are $a=0$, $a=-1$, or leave the cell unchanged.)

### Loop Control (Matching and Stack)

Define the static matching function

$$
\mathrm{match} : \{0,\dots,n-1\} \to \{0,\dots,n-1\}
$$

such that

$$
P(i)=\mathtt{[} \iff P(\mathrm{match}(i))=\mathtt{]}
\quad\text{and}\quad
\mathrm{match}(\mathrm{match}(i))=i.
$$

**Runtime stack operations**

$$
\begin{align*}
\mathrm{top}(S) &= \text{most recent pushed } pc \\
\mathrm{push}(S,x) &= S \cdot x \\
\mathrm{pop}(S) &= S\text{ without top}
\end{align*}
$$

**Loop rules** (Standard semantics)

$$
\begin{align\*}
\mathtt{[} &\colon &&
\begin{cases}
T(dp)=0 & \Rightarrow\quad pc' = \mathrm{match}(pc)+1,\quad S'=S \\
T(dp)\ne 0 & \Rightarrow\quad pc' = pc+1,\quad S' = \mathrm{push}(S,pc)
\end{cases}
\mathtt{]} &\colon &&
\begin{cases}
T(dp)\ne 0 & \Rightarrow\quad pc' = \mathrm{top}(S),\quad S'=S \\
T(dp)=0 & \Rightarrow\quad pc' = pc+1,\quad S' = \mathrm{pop}(S)
\end{cases}
\end{align\*}
$$

This is the classic “jump back to the matching `[` and re-test” behaviour. The stack stores the address of the opening bracket so that `]` can jump exactly there when the cell is nonzero.

### Execution Trace and Halting

$$
\sigma_0 \to \sigma_1 \to \sigma_2 \to \cdots \to \sigma_f
$$

where $pc_f \ge |P|$ (or an explicit halt state is reached).

### Hardware Control Equation 
This is the exact state-evolution law of the machine.

$$
\sigma_{k+1} =
F\bigl(
\sigma_k,\;
D\bigl(P(pc_k)\bigr)
\bigr)
$$

or, eliding the explicit decoder,

$$
\boxed{
\sigma_{k+1} =
F\bigl(
\sigma_k,\;
P(pc_k)
\bigr)
}
$$

## Appendix: Relational Brainfuck Architecture 

In relational terms, the Brainfuck self-interpreter architecture is a concrete realization of the structural triad:

```text
SID
├─ Structure
├─ Interaction
└─ Dynamics
```

The machine components partition naturally into these three modes.

### Complete Relational Statement

The Brainfuck self-interpreter architecture is a finite relational system

$$
\mathcal{M} = (S, I, D)
$$

whose computational behavior is generated by the closure operator

$$
\Gamma : R \to R^*.
$$

The memory tape, pointers, stack, and program constitute the Structure manifold. The eight Brainfuck operators together with the decoder microcode constitute the Interaction algebra. The state-transition rules induced by decoder-controlled execution constitute the Dynamics.

Consequently, the approximately 3,400-bit self-interpreter is a finite relational signature whose closure

$$
\mathcal{G}_{BF} = \Gamma(\Sigma_{BF})
$$

produces a stable, self-interpreting computational geometry.

### Structure (S)
- Instruction Memory $P$
- Program Counter $pc$
- Data Pointer $dp$
- Memory Tape $T$
- Loop Stack $S_{\mathrm{loop}}$
- Input stream $I$
- Output stream $O$

### Interaction (I)
- The eight Brainfuck operators: $>$, $<$, $+$, $-$, $\cdot$, $,$, $[\,$, $]$
- Decoder control signals
- Microcode rules
- Memory reads and writes
- Address-bus operations
- I/O transfers

### Dynamics (D)
- State-transition function $\delta$
- Execution relation $\sigma_k \to \sigma_{k+1}$
- Loop-matching rules
- Stack push/pop evolution
- Program-flow evolution
- Overall machine-state evolution

Formally,

$$
\mathrm{SID}_{BF} = (S, I, D),
$$

where

$$
\begin{align\*}
S &= \{P, T, pc, dp, S_{\mathrm{loop}}, I, O\}, \\
I &= \{>, <, +, -, \cdot, ,, [, ]\} \cup \{\text{decoder signals, microcode, bus and I/O operations}\}, \\
D &= \{\delta, {match}, {push}, {pop}\}.
\end{align\*}
$$

### Closure Interpretation

The machine is not merely a collection of components; its effective behavior emerges from the closure of their relations. Let $R$ denote the set of primitive machine relations:

$$
R = \{\text{fetch}, \text{decode}, \text{increment}, \text{decrement}, \text{read}, \text{write}, \text{jump}, \text{push}, \text{pop}\}.
$$

Relationalism introduces a closure operator $\Gamma$ that transforms these primitive relations into a stable executable geometry:

$$
\Gamma(R) = R^\*,
$$

where $R^*$ is the full closure of computationally reachable relations.

### Self-Interpreter as Relational Closure

The approximately 3,400-bit rule set is therefore not merely a program. It is a finite relational signature

$$
\Sigma_{BF} = \{r_1, r_2, \dots, r_n\}
$$

whose closure generates the machine’s effective computational geometry:

$$
\mathcal{G}_{BF} = \Gamma(\Sigma_{BF}).
$$

The machine executes because this relational closure is self-consistent:

$$
\Gamma\bigl(\Gamma(\Sigma_{BF})\bigr) = \Gamma(\Sigma_{BF}).
$$

This fixed-point property corresponds to self-interpretation.

### Decoder as Local Realization of $\Gamma$

In the hardware diagram, the Decoder / Microcode Unit acts as a local realization of $\Gamma$:

```text
Instruction Symbol
         │
         ▼
      Decoder
         │
         ▼
 Control Signals
         │
         ▼
 State Transition
```

Mathematically the decoder maps

$$
D : P(pc) \to u,
$$

where $u$ is a micro-operation. This is interpreted as

$$
u = \Gamma_{\mathrm{local}}\bigl(P(pc)\bigr).
$$

Thus the decoder converts a raw symbolic relation into a dynamically executable relation:

$$
\Gamma_{\mathrm{local}} : R \to R^*.
$$

### Hardware Mapping 

| Hardware Block       | Category |
|----------------------|--------------|
| Instruction Memory   | Structure    |
| Program Counter      | Structure    |
| Data Pointer         | Structure    |
| Memory Tape          | Structure    |
| Loop Stack           | Structure    |
| Decoder              | Interaction  |
| Microcode            | Interaction  |
| Opcode Set           | Interaction  |
| ALU                  | Interaction  |
| I/O Unit             | Interaction  |
| State Evolution      | Dynamics     |
| Loop Execution       | Dynamics     |
| Program Flow         | Dynamics     |
| Machine Trajectory   | Dynamics     |
