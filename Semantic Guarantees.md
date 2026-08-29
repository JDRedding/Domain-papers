# **Semantic Guarantees**
**Distributed Messaging Systems**

Semantic guarantees define how reliably a messaging or streaming system delivers and processes messages under failures. Systems like Apache Kafka rely on these guarantees to maintain predictable behavior despite crashes, retries, or network faults.

- Semantic guarantees must match application requirements for throughput, reliability, and complexity.  
- Idempotence and transactions are the core tools for achieving EOS.  
- Kafka provides strong EOS guarantees, but external systems must also support idempotency or transactions to maintain end‑to‑end correctness.


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
| Guarantee       | Loss | Dup | Lat |
| Guarantee       | Loss* | Dup* | Lat |
+-----------------+------+-----+-----+
| At-Most-Once    | Yes  | No  | Low |
| At-Least-Once   | No   | Yes | Med |
| Exactly-Once    | No   | No  | High|
+-----------------+------+-----+-----+
* Within the guarantee's defined processing
  /transaction boundary.
```

---

## **1. At‑Most‑Once Delivery**

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

## **2. At‑Least‑Once Delivery**

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

## **3. Exactly‑Once Delivery (EOS)**

### **Definition**  
Messages are delivered and processed **exactly once** — no loss, no duplicates — even with retries, broker failures, or consumer crashes.

Exactly-once processing semantics (EOS) ensure that, within a defined transactional boundary, a successfully processed record's effect is committed atomically and is not observed as a duplicate by downstream transactional consumers, despite retries and certain failures.

### **Mechanisms in Kafka**
- **Idempotent Producers**  
  - Producer ID (PID) + sequence numbers  
  - Deduplicates retries

- **Transactional Producers**  
  - Atomic writes across partitions/topics  
  - Coordinated by the Transaction Coordinator

- **Transactional Consumers**  
  - Read only committed messages (`isolation.level=read_committed`)  
  - Processing offsets included in transactions

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

## **Practical Considerations**

## **Message Delivery Semantics Comparison**

| **Guarantee** | **Semantic Guarantee** | **Message Loss** | **Message Duplication** | **Latency** | **Complexity** | **Typical Use** |
| --- | --- | --- | --- | --- | --- | --- |
| **At‑Most‑Once** | Possible | Possible | None | Low | Low | Telemetry, metrics |
| **At‑Least‑Once** | None | None (with retries) | Possible | Medium | Medium | Data pipelines, event sourcing |
| **Exactly‑Once** | None | None | None | Higher | High | Financial transactions, billing, stream processing |

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

### The "End-to-End" Reality Check

Kafka's EOS only applies **within the Kafka ecosystem** (Kafka → Kafka Streams → Kafka).

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

