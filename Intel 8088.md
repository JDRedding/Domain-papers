# Intel 8088

**The Intel 8088 features a 16-bit internal architecture with an 8-bit external data bus.** This means the CPU’s registers, ALU, and internal data paths operate on 16-bit quantities, while the external data bus that connects to memory and I/O devices is only 8 bits wide. The 8086 uses a full 16-bit external data bus; the 8088 is otherwise architecturally identical except for this external-bus difference. This matches the classic 8088 design: a 16-bit internal machine constrained by an 8-bit external data path. These relations fully capture the mathematical distinction between the 16-bit internal architecture and the 8-bit external bus of the 8088.

```
8088 Architecture (Structural Summary)
-----------------------------------------
EU (16-bit):ALU: 16
Registers: 16
Internal bus: 16
Micro-ops identical to 8086

BIU (8-bit external):Data bus: 8
Address bus: 20
Prefetch queue: 4 bytes
Word transfer: 2 cycles
Serialized instruction fetch

Performance Consequence:EU > BIU (BIU is bottleneck)
Memory-heavy code slows
Register-heavy code unaffected

Address Formation:
  PA = (Segment << 4) + Offset
```

### Core architectural parameters

- Internal data width:
  
$$
W_{\text{int}} = 16 \text{ bits}
$$

- External data bus width:  

$$
W_{\text{ext}} = 8 \text{ bits}
$$

- Address bus width (identical on both 8086 and 8088):  

$$
W_{\text{addr}} = 20 \text{ bits}
$$

- Addressable memory space:  

$$
M = 2^{W_{\text{addr}}} = 2^{20} = 1\,048\,576 \text{ bytes} = 1\,\text{MiB}
$$

### Number of external bus cycles required for a data transfer
Any internal $W_{\text{int}}$-bit quantity that must cross the external bus is transferred in successive $W_{\text{ext}}$-bit pieces:

$$
N = \left\lceil\frac{W_{\text{int}}}{W_{\text{ext}}}\right\rceil = \left\lceil\frac{16}{8}\right\rceil = 2
$$

Consequently, every aligned 16-bit word read or write requires **two** consecutive bus cycles on the 8088 (versus a single cycle on the 8086).

### Effective external bandwidth
Let $f$ be the processor clock frequency and $C$ the number of clock cycles per bus cycle (typically $C=4$ for a basic memory access on the 8088/8086). The theoretical peak external data rate is

$$
B_{\text{peak}} = \frac{W_{\text{ext}}\cdot f}{C}
$$

Because a 16-bit transfer needs two bus cycles, the effective rate for word-sized transfers becomes

$$
B_{\text{eff,16}} = \frac{W_{\text{int}}\cdot f}{N\cdot C} = \frac{B_{\text{peak}}}{2}
$$

(Byte transfers of course still occur at the full $B_{\text{peak}}$.)

### Bus-interface unit (BIU) versus execution unit (EU)
The 8088 (like the 8086) is partitioned into two largely independent units:

- **Execution Unit (EU)** – fully 16-bit; contains the ALU, general-purpose registers (AX, BX, CX, DX, SP, BP, SI, DI), and the instruction decoder.  
- **Bus Interface Unit (BIU)** – responsible for all external bus activity. On the 8088 the BIU’s data path is only 8 bits wide; it therefore serializes every 16-bit transfer into two 8-bit bus transactions and manages a 4-byte instruction prefetch queue (versus a 6-byte queue on the 8086).

The BIU and EU communicate via a 16-bit internal bus. When the EU requests a 16-bit operand, the BIU automatically performs the two successive 8-bit external accesses and assembles the result before presenting it to the EU.

### Address formation (segment:offset model)
Physical address calculation is identical on both processors:

$$
\text{Physical address} = (\text{Segment register}\times 16) + \text{Offset}
$$

or, in binary terms,

$$
PA = (S \ll 4) + O
$$

where $S$ and $O$ are 16-bit quantities, yielding the 20-bit physical address.

# Formal Structural Summary

Execution Unit (EU) — fully 16-bit

$$
\begin{align*}
W_{\text{ALU}} &= 16 \text{ bits} \\
W_{\text{reg}} &= 16 \text{ bits} \\
W_{\text{int-bus}} &= 16 \text{ bits}
\end{align*}
$$

Micro-operations are identical to those of the 8086.

Bus Interface Unit (BIU) — 8-bit external interface

$$
\begin{align*}
W_{\text{data}} &= 8 \text{ bits} \\
W_{\text{addr}} &= 20 \text{ bits} \\
Q_{\text{prefetch}} &= 4 \text{ bytes}
\end{align*}
$$

Word (16-bit) transfer cost:

$$
N_{\text{cycles}} = \left\lceil \frac{16}{8} \right\rceil = 2
$$

Instruction fetch is serialized over the 8-bit bus.

Performance relationship

$$
\text{Throughput}{\text{EU}} > \text{Throughput}{\text{BIU}}
$$

BIU is the bottleneck.  
Memory-heavy code is slowed by the factor $\approx 2$ on word accesses.  
Register-heavy code (operating entirely inside the EU) is essentially unaffected.

Physical address formation

$$
PA = (S \ll 4) + O = 16 \cdot S + O
$$

where $S$ (segment) and $O$ (offset) are both 16-bit quantities, producing a 20-bit physical address.
