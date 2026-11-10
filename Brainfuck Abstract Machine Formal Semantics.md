# Brainfuck Abstract Machine Formal Semantics

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
|      | LOOP STACK S                                 |        |
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


