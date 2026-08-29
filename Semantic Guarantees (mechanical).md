# **Mechanical Semantic Guarantees**

This document formalizes **At‑Most‑Once**, **At‑Least‑Once**, and **Exactly‑Once** semantics as **constraints on delivery counts** $D(m)$ and **committed effects** $E(m)$, then shows how Kafka enforces exactly-once semantics inside a transactional boundary $B$ using **idempotent producers**, **transactional commits**, and **consumer isolation**. End‑to‑end exactly-once semantics only holds if *every* stage is either transactional or idempotent.

These are mechanical guarantees, not semantic guarantees. Kafka calls them “*semantic guarantees*,” but they are not semantics in the meaning‑grounding sense. They are protocol semantics, not substrate semantics. Kafka's semantic guarantees describe consistency and delivery behavior of messages, focusing on reliability and correctness at the system level. They are operational semantics, not symbolic or meaning-based semantics.

**Distributed Messaging Systems**

Semantic guarantees define how reliably a messaging or streaming system delivers and processes messages under failures. Systems like Apache Kafka rely on these guarantees to maintain predictable behavior despite crashes, retries, or network faults.

- Semantic guarantees must match application requirements for throughput, reliability, and complexity.  
- Idempotence and transactions are the core tools for achieving EOS.  
- Kafka provides strong EOS guarantees, but external systems must also support idempotency or transactions to maintain end‑to‑end correctness.

## Notation

Below is a compact mathematical account of the three delivery/processing semantics in the notes, together with the Kafka-specific machinery (idempotent producers, sequence numbers, transactions). The notation is chosen so each guarantee is a statement about counts of deliveries and of *observable effects*, not just network packets.

| Symbol | Meaning |
|---|---|
| $M$ | set of logical messages (application records) |
| $m \in M$ | a single logical message |
| $D(m)$ | number of times $m$ is *delivered* to a consumer |
| $E(m)$ | number of times the *effect* of $m$ is committed in the processing boundary |
| $o(m)$ | last durable consumer offset associated with $m$ |
| $\mathrm{proc}(m)$ | business-logic / side-effect function applied to $m$ |
| $\mathrm{commit}(o)$ | durable write of offset $o$ |
| $\mathrm{PID}$ | producer identifier |
| $s_{\mathrm{PID},p}$ | producer sequence number for partition $p$ |
| $L_{\mathrm{PID},p}$ | last accepted sequence number stored by the broker for $(\mathrm{PID},p)$ |
| $T$ | a Kafka transaction |
| $\mathrm{vis}(r)$ | whether record $r$ is visible to a `read_committed` consumer |

Effects live inside a *processing / transaction boundary* $B$. All “no loss / no duplicate” claims below are relative to $B$, exactly as in the notes.

## **📘 Overview**
There are three standard delivery semantics:

- **At‑Most‑Once**  
- **At‑Least‑Once**  
- **Exactly‑Once**  

Each represents a different balance of throughput, reliability, and complexity.

```text
+------------------------------------+
|  DELIVERY SEMANTICS QUICK MATRIX   |
+-----------------+------+-----+-----+
| Guarantee       |Loss* |Dup* | Lat |
+-----------------+------+-----+-----+
| At-Most-Once    | Yes  | No  | Low |
| At-Least-Once   | No   | Yes | Med |
| Exactly-Once    | No   | No  | High|
+-----------------+------+-----+-----+
* Within the guarantee's defined processing
  /transaction boundary.
```

**Delivery semantics as predicates**

Each guarantee as a logical predicate over message‑effect counts:

- **At‑Most‑Once**  
  $D(m)\le 1,\;E(m)\le 1$ — loss allowed, duplicates forbidden *within the protocol*.

- **At‑Least‑Once**  
  $D(m)\ge 1,\;E(m)\ge 1$ — no loss, duplicates allowed.

- **Exactly‑Once**  
  $E_B(m)\in\{0,1\}$ with atomic coupling of effect + offset inside boundary $B$.

This way to expresses semantics: everything reduces to **counts of observable effects**, not packet‑level retries.

---

## **At‑Most‑Once Delivery**

### **Definition**  
Messages are delivered **at most once**. No duplicates occur, but messages may be lost if failures happen before processing completes.

### **Producer Behavior**  
- Asynchronous “fire‑and‑forget” sends  
- No acknowledgment required

### **Consumer Behavior**  
- Offsets may be committed **before** processing  
- Crashes can cause messages to be skipped

### **Use Cases**  
- Telemetry  
- Metrics  
- High‑frequency monitoring where occasional loss is acceptable

### **Trade‑offs**
- High throughput  
- Low latency  
- Low complexity  
- Risk of message loss

---

**Processing rule.** Advance durable progress *before* the effect, or never retry an ambiguous send:

$$
\mathrm{commit}\bigl(o(m)\bigr) \;\prec\; \mathrm{proc}(m)
\quad\text{or}\quad
\text{no retry on uncertain delivery.}
$$

**Count constraints.**

$$
\forall m \in M:\qquad
0 \le D(m) \le 1,
\qquad
0 \le E(m) \le 1.
$$

Loss is allowed:

$$
\exists m:\quad D(m)=0 \;\lor\; E(m)=0.
$$

Duplicates from *this protocol* are forbidden (retries of ambiguous attempts are suppressed). Other sources of duplicates (multiple producers, replay) are outside the guarantee.

**Consumer crash model.** If the process dies after $\mathrm{commit}(o(m))$ but before $\mathrm{proc}(m)$ finishes,

$$
E(m)=0 \qquad\text{(silent skip / loss).}
$$

---

##  **At‑Least‑Once Delivery**

### **Definition**  
Messages are delivered **one or more times**. No messages are lost, but duplicates may occur.

### **Producer Behavior**
- Retries on missing acknowledgments  
- Possible duplicate sends

### **Consumer Behavior**
- Offsets committed **after** processing  
- Failures may cause reprocessing

### **Conflict Resolution**
- Idempotent operations  
- Deduplication strategies

### **Use Cases**
- Data pipelines  
- Order processing  
- Event sourcing  
- Financial logs where loss is unacceptable

### **Trade‑offs**
- Ensures durability  
- Moderate latency  
- Moderate complexity  
- Potential duplicates

---

**Processing rule.** Retry uncertain delivery; advance progress only *after* the effect:

$$
\mathrm{proc}(m) \;\prec\; \mathrm{commit}\bigl(o(m)\bigr),\quad\text{retries until ack.}
$$

**Count constraints.**

$$
\forall m \in M:\qquad
D(m) \ge 1,
\qquad
E(m) \ge 1
$$

under the usual durability assumptions (retained replicas, correct config, eventual consumer recovery). Duplicates are allowed:

$$
\exists m:\quad D(m)>1 \;\lor\; E(m)>1.
$$

**Consumer crash model.** If the process dies after $\mathrm{proc}(m)$ but before $\mathrm{commit}(o(m))$,

$$
E(m) \ge 2 \qquad\text{on recovery (reprocessing).}
$$

**Idempotent resolution.** If $\mathrm{proc}$ is idempotent,

$$
\mathrm{proc}^{(k)}(m) \;=\; \mathrm{proc}(m) \quad\text{for all }k\ge 1,
$$

so multiple executions collapse to one *observable* state even though $E(m)>1$.

---

## **Exactly‑Once Delivery (EOS)**

### **Definition**  
**Exactly-once processing semantics** (**EOS**) ensure that, within a defined transactional boundary, a successfully processed record's effect is committed atomically and is not observed as a duplicate by downstream transactional consumers, despite retries and certain failures.

### **Mechanisms in Kafka**
- **Idempotent Producers**  
  - Producer ID (PID) + sequence numbers  
  - Deduplicates retries

- **Transactional Producers**  
  - Atomic writes across partitions/topics  
  - Coordinated by the Transaction Coordinator

- **Transactional Processing / Consumer Isolation**
  - Read only committed messages (`isolation.level=read_committed`)
  - Processing offsets can be committed as part of a transaction

### **Use Cases**
- Financial transactions  
- Billing  
- Inventory management  
- Stream processing pipelines requiring precision

### **Trade‑offs**
- Higher latency 
- Slightly reduced throughput  
- Increased operational complexity  
- Strong correctness guarantees

---

**Definition (inside boundary $B$).** A successfully processed record’s effect and its input progress are committed atomically; downstream transactional readers do not observe a duplicate:

$$
\forall m \in M:\qquad E_B(m) \in \{0,1\} \quad \text{and, if processing succeeds,}\quad E_B(m)=1,
$$

$$
D_{\mathrm{vis}}(m) = E_B(m) \quad \forall\ \text{consumers with isolation level }\mathtt{read\_committed}
$$

$$
D_{\mathrm{vis}}(m) = E_B(m) \quad\text{for every }\mathrm{read\text{-}committed}\text{ consumer}
$$

Equivalently: either both output effects and consumed offsets commit, or neither does.

**Atomic commit of a processing step.**

$$
T(m) \;=\;
\{\,\mathrm{produce}(\mathrm{out}(m)),\;
\mathrm{sendOffsetsToTransaction}(o(m))\,\}
$$

$$
\mathrm{commit}(T(m))
\;\iff\;
\mathrm{out}(m)\text{ visible}
\;\land\;
o(m)\text{ advanced.}
$$

$$
\mathrm{abort}(T(m))
\;\implies\;
\mathrm{vis}(\mathrm{out}(m))=0
\;\land\;
o(m)\text{ unchanged.}
$$

The pipeline in the notes is exactly:

$$
\mathrm{poll} \;\to\;
\begin{array}{c}
\mathrm{begin}(T)\\
\mathrm{transform}\\
\mathrm{produce}\\
\mathrm{sendOffsetsToTransaction}
\end{array}
\;\to\;
\mathrm{commit}(T).
$$

---

## Kafka idempotent producer

Each record carries $(\mathrm{PID},\,p,\,s)$. Broker acceptance:

$$
\mathrm{accept}(\mathrm{PID},p,s)
\;\iff\;
s = L_{\mathrm{PID},p}+1.
$$

On accept:

$$
L_{\mathrm{PID},p} \leftarrow s.
$$

On retry of an already-accepted sequence:

$$
s \le L_{\mathrm{PID},p}
\;\implies\;
\text{ack, do not append}.
$$

Out-of-order (gap):

$$
s > L_{\mathrm{PID},p}+1
\;\implies\;
\texttt{OutOfOrderSequenceException}.
$$

This yields *exactly-once append per $(\mathrm{PID},p)$ session*:

$$
{No.}\{\text{log entries with }(\mathrm{PID},p,s)\} \le 1.
$$

It does **not** by itself give atomic offset/output commit or protect external sinks. A new producer instance gets a new $\mathrm{PID}$; fencing across restarts needs a stable $\texttt{transactional.id}$ and producer epoch.

---

## Consumer isolation

For a transactional record $r$ belonging to transaction $T$:

$$
\mathrm{vis}(r)
\;=\;
\begin{cases}
1 & \text{if }T\text{ committed}\\
0 & \text{if }T\text{ aborted or still open}.
\end{cases}
$$

`isolation.level=read_committed` implements $\mathrm{vis}$ via commit/abort control markers. Uncommitted or aborted data is filtered, so

$$
D_{\mathrm{vis}}(m) = E_B(m)
$$

inside Kafka’s transactional boundary.

---

## End-to-end composition

Write the pipeline as stages $S_0 \to S_1 \to \cdots \to S_n$. Kafka EOS on a subset of stages does not imply global EOS:

$$
\mathrm{EOS}(S_0,\ldots,S_n)
\;\iff\;
\forall i,\;
S_i\text{ is transactional w.r.t. the same boundary}
\;\text{or}\;
\mathrm{proc}_{S_i}\text{ is idempotent}.
$$

For an external sink (e.g. PostgreSQL):

- **Idempotent sink:** deterministic key $k(m)$ and

$$
\mathrm{UPSERT}_{k(m)}(\mathrm{state},\,\mathrm{effect}(m))
$$

so repeated application converges:

$$
f(f(\sigma)) = f(\sigma).
$$

- **2PC / XA sink:** extend the atomic set

$$
T_{\mathrm{ext}}(m) = T_{\mathrm{Kafka}}(m) \cup T_{\mathrm{DB}}(m),
$$

with the usual extra latency and coordinator-failure cost.

A single non-idempotent, non-transactional stage breaks the chain:

$$
\exists\, i:\ S_i\text{ neither transactional nor idempotent}
\;\implies\;
\neg\,\mathrm{EOS}_{\mathrm{e2e}}.
$$

---

## Summary of the three guarantees as predicates

$$
\begin{aligned}
\mathrm{AMO} &\equiv
\forall m\bigl(D(m)\le 1 \land E(m)\le 1\bigr)
&&\text{(loss allowed)}
\mathrm{ALO} &\equiv
\forall m\bigl(D(m)\ge 1 \land E(m)\ge 1\bigr)
&&\text{(duplicates allowed)}
\mathrm{EOS}_B &\equiv
\forall m\bigl(E_B(m)\in\{0,1\}\bigr)
\;\land\;
\text{atomic }(\mathrm{effect},o)
&&\text{(no loss, no duplicate effect in }B\text{)}
\end{aligned}
$$

$\mathrm{EOS}_B$ is strictly stronger than $\mathrm{ALO}$ only *inside* $B$. Outside $B$, the notes’ “end-to-end reality check” applies: you must add sink idempotence or an encompassing transaction.

---

## **Practical Considerations**

## **Message Delivery Semantics Comparison**

| **Guarantee** | **[Processing Rule](ca://s?q=Explain_processing_rule_semantics)** | **[Loss Permitted?](ca://s?q=Explain_message_loss_semantics)** | **[Duplicate Effects Permitted?](ca://s?q=Explain_duplicate_effects_semantics)** | **Typical Latency** | **Typical Complexity** |
| --- | --- | --- | --- | --- | --- |
| **At‑Most‑Once** | Advance durable progress *before* effect completion, or do not retry uncertain delivery | Yes | No (assuming no retries) | Low | Low |
| **At‑Least‑Once** | Retry uncertain delivery; advance progress only *after* effect completion | No (under durability assumptions) | Yes | Medium | Medium |
| **Exactly‑Once** | Atomically commit output effects and input progress, or make effects idempotent | No | No (within transaction boundary) | Higher | High |

At-most-once does not universally mean no duplicates. It means the system deliberately avoids retrying ambiguous delivery or processing attempts. Duplicates can still arise elsewhere if the implementation has multiple producers, replay paths, or non-idempotent external effects.

At-least-once means “no silent loss caused by the delivery protocol,” assuming retained data, functioning replication, correct configuration, and eventual recovery. No real distributed system can guarantee delivery through permanent destruction of all replicas, invalid retention policies, or an unavailable consumer forever.

### **End‑to‑End Guarantee**
True EOS requires **every stage** — source, processor, sink — to use idempotent or transactional operations. A single non‑transactional component breaks the chain.

### **Performance vs. Safety**
- **At‑Most‑Once** → fastest, possible data loss  
- **At‑Least‑Once** → durable, duplicates possible  
- **Exactly‑Once** → safest, highest complexity  

### **Kafka Implementation**
Kafka achieves EOS via:
- Idempotent production  
- Transactional writes  
- Consumer isolation
  
Frameworks like Kafka Streams and Apache Flink build EOS stream processors on top of these primitives.

## Deep-Dive Mechanics

### The Core Mechanical Distinctions

* **At-Most-Once:** The consumer commits its offset *before* executing business logic. If the consumer crashes during processing, the broker assumes it finished, causing message loss upon recovery.
* **At-Least-Once:** The consumer commits its offset *after* business logic succeeds. If the process crashes mid-execution, the replacement consumer re-reads from the last committed offset, leading to duplicate processing.
* **Exactly-Once (EOS):** Uses producer idempotence and Kafka transactions to atomically coordinate produced records and consumed offsets. The transaction coordinator tracks transaction state, while commit/abort control markers allow `read_committed` consumers to distinguish committed transactional data from aborted transactions

### Kafka EOS Mechanism Breakdown

1. **Producer Idempotence (`enable.idempotence=true`):** Prevents network-retry duplicates using a monotonically increasing Sequence ID combined with a unique Producer ID (PID).
2. **Transactional Writes (`transactional.id`):** Allows multi-partition writes and consumer offset commits to be wrapped into a single atomic transaction.
3. **Consumer Isolation (`isolation.level=read_committed`):** Forces downstream readers to filter out uncommitted messages or aborted transactions using control markers.

| Kafka primitive          | What it protects against                                                         | What it does not solve alone                                                           |
| ------------------------ | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| Idempotent producer      | Duplicate records caused by producer retry after ambiguous acknowledgments       | Duplicate processing by consumers; atomic offset/output commits; external side effects |
| Transactional producer   | Atomic visibility of writes across Kafka partitions and topics                   | Atomicity with arbitrary non-Kafka databases or services                               |
| sendOffsetsToTransaction | Atomic coupling of consumed offsets with produced Kafka records                  | Effects performed outside Kafka                                                        |
| read_committed           | Exposure of uncommitted or aborted transactional records to downstream consumers | Duplicate effects at non-transactional sinks                                           |
| Stable transactional.id  | Fencing of zombie producer instances after failover/restart                      | Application-level idempotency and invalid business logic                               |

### The "End-to-End" Reality Check

```text
poll input records
     │
     ▼
begin Kafka transaction
     │
     ├── transform records
     ├── produce output records
     └── add consumed offsets to transaction
     │
     ▼
commit transaction
```

### **Kafka’s mechanical enforcement**
Three pillars:

- **Idempotent producer** — PID + sequence numbers ensure  
  $\#\{(\mathrm{PID},p,s)\}\le 1$

- **Transactional producer** — atomic visibility across partitions.

- **Consumer isolation** — `read_committed` implements  
  $D_{\mathrm{vis}}(m)=E_B(m)$

This is the minimal set of primitives needed for EOS *inside Kafka*.

Kafka's transactional EOS guarantees apply to operations participating in Kafka's transaction model. When processing crosses into an external system, that system's transaction or idempotency semantics must be considered separately.

```text
Kafka transaction
       │
       ▼
    Processor
       │
       ▼
   PostgreSQL
       │
       ├── transactional integration
       │       → atomic boundary can extend
       │
       └── idempotent operation
               → effect can converge safely
```

When writing to external sinks (like PostgreSQL, Elasticsearch, or S3):

* **Idempotent Sinks:** Require deterministic unique keys (e.g., `UPSERT` operations via primary key constraints).
* **Two-Phase Commit (2PC) Sinks:** Require the sink system to support external transaction control (XA / 2PC integration), which introduces higher latency and risk of dangling locks on coordinator failures.
