# Physical Programming
## 1. **Computation as a Material Process**
Early programming required **physically instantiated code**. A punch card was not a metaphor — it *was* the program.

Early computing embodied logic physically through punch cards, where each character was encoded via Hollerith zone‑digit patterns and programs existed as ordered decks processed through batch workflows with long feedback cycles. This material, mechanical model shaped programming culture around precision and delayed iteration. The transition to interactive computing emerged through time‑sharing, which introduced CPU slicing, interrupts, and multi‑user terminals, collapsing debugging latency and enabling conversational interaction with machines. High‑level languages like Fortran abstracted computation into mathematical notation, bridging scientific domains with machine execution. Together, these developments trace a progression from physical instantiation to symbolic encoding, from deferred batch execution to real‑time interaction, and from machine‑proximal languages to domain‑proximal abstractions.

### Core properties
- **One card = one line of code or data.**
- **80 columns**, each encoding **one character**.
- **12 rows** (12, 11, 0, 1–9) used to encode characters via hole patterns.
- Programs existed as **ordered stacks** (“decks”), often hundreds or thousands of cards.

### Consequences
- Programming was **mechanical**, **tactile**, and **error‑prone**.
- Debugging required **re‑punching** physical cards.
- Dropping a deck could destroy a program’s ordering.
- Programmers developed **physical workflows**: rubber bands, diagonal stripes across card edges, careful labeling.

This created a culture of **discipline**, **precision**, and **ritualized workflow**.

---

## 2. **Hollerith Encoding: The Symbolic Logic Behind the Card**
Hollerith encoding was the formal scheme that mapped characters to hole patterns.

### Structure
- **Zone rows:** 12, 11, 0  
- **Digit rows:** 1–9  
- **Characters = combination of zone + digit punches**  
- **Digits = single punch in rows 0–9**  
- **Letters = zone + digit**  
- **Special characters = zone + digit + extra punch**

### Why it mattered
- It was one of the earliest **formal character encodings**.
- It influenced **BCD**, **EBCDIC**, and early machine character sets.
- It demonstrated how **symbolic systems** emerge from **mechanical constraints**.

---

## 3. **Batch Computing: The Temporal Model of Early Programming**
Batch computing was the dominant execution model before interactive terminals.

### Workflow
1. Write code on paper.
2. Punch cards using a keypunch machine.
3. Submit deck to operators.
4. Wait hours for printed output.
5. Debug by editing and re‑punching cards.
6. Resubmit and repeat.

### Characteristics
- **Deferred feedback** (hours or overnight).
- **Operator‑mediated execution**.
- **High latency debugging cycles**.
- **Throughput prioritized over user experience**.

Batch computing shaped early programming into a **slow, deliberate, highly structured discipline**.

---

## 4. **Transition to Interactive Computing: Time‑Sharing Revolution**
The shift from batch to interactive computing was driven by **time‑sharing**, which allowed multiple users to interact with a single machine in real time.

### Key innovations
- **CPU time slicing** — rapid switching between users.
- **Interrupt-driven I/O** — terminals could send input anytime.
- **Memory protection** — isolated user sessions.
- **Swapping/paging** — managing multiple active processes.

### Systems
- **CTSS (1961)** — first practical time‑sharing system.
- **Multics (late 1960s)** — advanced multi‑user OS; influenced UNIX.

### Effects
- Programming became **interactive**: type → run → fix → repeat.
- Debugging cycles collapsed from hours to seconds.
- Computing became **social**: labs full of terminals.
- Led directly to **modern operating systems**, **personal computing**, and **interactive development environments**.

---

## 5. **Fortran: Early High‑Level Abstraction**
Fortran represented a major leap: expressing computation in **mathematical notation** rather than machine code.

### Abstract role
- Moved programming from **hardware‑proximal** to **domain‑proximal**.
- Allowed scientists and engineers to write code resembling equations.
- Fit naturally into punch‑card workflows (one statement per card).
- Became the backbone of academic and scientific computing.

---

## 6. **Conceptual Arc**

### **A. Embodied computation**
Logic physically encoded in cardboard.

### **B. Symbol encoding systems**
Hollerith as a structured mapping from symbols → physical patterns.

### **C. Execution models**
Batch computing as deferred, sequential, operator‑mediated execution.

### **D. Interaction paradigms**
Time‑sharing enabling real‑time, multi‑user interaction.

### **E. Abstraction layers**
Fortran and later languages lifting programming into conceptual domains.

