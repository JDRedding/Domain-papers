# We Can Remember It for You Wholesale
- 813.54 — American science fiction
- Short story → modern American SF


```
+==============================================================================+
|                    WE CAN REMEMBER IT FOR YOU WHOLESALE                      |
|                         conceptual machine / schema                          |
+==============================================================================+

```

**“*We Can Remember It for You Wholesale*”** (1966) is Philip K. Dick’s short story about a clerk named Douglas Quail who cannot afford a real trip to Mars, so he buys an implanted memory of one — only to discover layers of real, suppressed identity underneath the fantasy.

## Themes
- Memory vs. Reality: The story challenges the distinction between real and implanted memories.
- Identity: It raises questions about how memories shape our understanding of who we are.
- Fantasy vs. Reality: The allure of living out fantasies through artificial memories is a central theme.

## Story 
- Quail’s mundane life and obsession with Mars. He is a low-level clerk with a critical wife. He daydreams constantly of the Martian valleys and decides to buy a two-week “memory package” of having gone there as an Interplan secret agent, complete with souvenirs so the illusion will hold.
  
```
QUAIL PROFILE
-------------
  class Quail:
      ordinary      = TRUE
      insecure      = TRUE
      henpecked     = TRUE
      underpaid     = TRUE
      compensatory  = TRUE   // wants a past that justifies him
      not_imperial  = TRUE   // vanity is modest, therefore universal
      trapped_by_granted_wish = TRUE

```

- The procedure fails because the memories are already real. Under sedation the technicians find existing, government-erased memories of Quail actually having been an assassin on Mars. Rekal panics, aborts the implant, refunds part of the fee, and sends him home. He later finds genuine Martian artifacts (postcards, dried plants, etc.) in his apartment.
- Interplan closes in. Agents appear because Quail still has a telepathic transmitter in his head; they can hear his thoughts. His cover is blown. After a confrontation he bargains for a new, deeper cover: Rekal will implant his “absolute ultimate fantasy” so he will no longer want the dangerous Mars memories.
- The childhood-savior fantasy. Psychiatric profiling reveals Quail’s deepest wish is that, as a boy, he met aliens, showed them mercy instead of hostility, and they promised never to invade Earth as long as he lived. Rekal prepares to overwrite everything with this grandiose story—and then discovers *that* memory is also genuine. The story ends on that revelation.

Dick is not writing an action thriller. He is stacking false memories on top of real ones until the reader (and Quail) cannot tell which layer is “true.” Each new “fantasy” turns out to have been fact. The commercial memory industry, government mind-wiping, and Quail’s own narcissistic wish to be secretly important all collapse into one another. The final joke is that even the most childish, messianic daydream was history.

## **What Dick is actually doing**
> Dick is not writing an action thriller.

He’s writing a **paranoid epistemological loop**.

Memory manipulation raises questions about identity by blurring the lines between real and false memories, leading the protagonist, Douglas Quail, to struggle with his sense of self. As he uncovers repressed memories, it becomes clear that his true identity is intertwined with both his actual experiences and the fabricated ones he sought to escape his mundane life.

The story is about:
- the instability of identity  
- the unreliability of memory  
- the collapse of fantasy into fact  
- and the horror of discovering your own mythology is true

Dick’s joke is that Quail’s mind is not a place where fantasies hide reality — it’s a place where reality hides inside fantasies.

```
HORROR CONDITIONS
-----------------
  incomplete_erasure     == TRUE
  fake_indistinguishable == TRUE
  artifacts_outlive_story== TRUE
  private_interior       == FALSE
  daydream_is_archive    == TRUE

```

The final beat is not a twist; it’s a **recursive lock**.  
There is no stable layer underneath.  
Every “truth” is another fantasy that turns out to be true.

## **The engine of the story**

```
ENGINE
------
  while Quail.reaches_for(fantasy):
      if inspect(fantasy) == LivedMemory:
          panic(institution)
          fantasy becomes new cover_target
      else:
          implant(fantasy)
      # never exits; RULE_0 fires again

```
```
STATE MACHINE
-------------
  [ClerkQuail]
       |  buys Rekal package
       v
  [Implant attempt]
       |  technicians find ErasedMemory
       v
  [AgentQuail leaks]
       |  artifacts at home confirm LivedMemory
       v
  [Interplan confrontation]
       |  bargain: bury AgentQuail under UltimateFantasy
       v
  [ChildSaviorQuail]
       |  implant prep discovers ConfirmedFantasy
       v
  [RECURSIVE LOCK]
       no overwrite possible; reality matches mythology

```

The short story runs on a single structural trick:

> **Every time Quail reaches for a fantasy, he discovers it was already true.**

```
FUNDAMENTAL
-----------
  RULE_0 : every_fantasy Quail reaches for  -->  already_true
  RULE_1 : there is no stable bottom layer
  RULE_2 : identity = last un-erased narrative that still leaks
  RULE_3 : memory is contested territory, not a record

```

Dick uses this to collapse:
- commercial memory fabrication  
- government erasure  
- personal narcissistic mythology  
- and the reader’s sense of “what actually happened”

into one recursive loop.

```
TYPES
-----
  Memory
    |-- LivedMemory          // actually happened
    |-- ImplantedMemory      // commercial product (Rekal package)
    |-- ErasedMemory         // government wipe; incomplete
    |-- LeakedMemory         // erased but still executing
    |-- FantasyMemory        // wished-for narrative
    +-- ConfirmedFantasy     // FantasyMemory that proves LivedMemory

  IdentityLayer
    |-- ClerkQuail           // present cover: ordinary, henpecked, underpaid
    |-- AgentQuail           // Interplan assassin / Mars operative
    |-- ChildSaviorQuail     // boy who showed aliens mercy; planetary linchpin
    +-- UnstableQuail        // superposition of all three

  Institution
    |-- RekalInc             // wish-fulfillment as a service
    |-- Interplan            // sloppy state erasure + surveillance
    +-- QuailMind            // third institution; keeps producing deeper layers

  Artifact
    |-- Postcard
    |-- DriedMartianFlora
    |-- TelepathicTransmitter
    +-- SouvenirPacket       // commercial proof that outlasts official story

```

Quail is the perfect protagonist for this because he’s:
- ordinary  
- insecure  
- yearning for significance  
- and easily seduced by heroic narratives  

He wants to be special so badly that the universe keeps revealing he *was* — but in ways that only make his life worse.

```
VARIABLES
---------
  quail.desire_mars          : bool   = TRUE   // constant drive
  quail.can_afford_real_trip : bool   = FALSE
  quail.wants_significance   : bool   = TRUE   // narcissism, modest not imperial

  rekal.package              : Memory = ImplantedMemory("Mars + secret agent + 2 weeks")
  rekal.souvenirs            : Artifact[] 
  rekal.status               : enum   = ABORTED_ON_LEAK

  interplan.cover_identity   : IdentityLayer = ClerkQuail
  interplan.true_assignment  : IdentityLayer = AgentQuail
  interplan.wipe_quality     : enum   = INCOMPLETE
  interplan.transmitter      : Artifact = TelepathicTransmitter  // still live

  profile.ultimate_fantasy   : Memory = FantasyMemory("child meets aliens, shows mercy,
                                                       Earth spared while he lives")
  profile.ultimate_fantasy.is_real : bool = TRUE   // recursive lock

  world.stable_truth_layer   : Memory | null = NULL
  reader.can_tell_real_from_fake : bool = FALSE

```

### **Layer 1: The Mars vacation**
Quail wants:
- escape  
- adventure  
- a sense of importance  
- a break from his wife’s criticism  
- and a memory he can *believe* in

Rekal’s product is basically **wish‑fulfillment as a service**.  
The fantasy is cheap, safe, and controlled.

But the moment the technicians go under the hood, they find:
- real memories  
- real violence  
- real government tampering  
- real artifacts in his apartment  

The fantasy collapses because the truth is already there.

---

### **Layer 2: The erased assassin**
This is Dick’s first inversion:

> Quail didn’t want to *pretend* he was a secret agent.  
> He *was* one — and the government tried to delete it.

This is where Dick’s paranoia shines.  
The government isn’t omnipotent; it’s sloppy.  
They erase memories but leave transmitters in his skull.  
They suppress his past but leave physical evidence in his home.

Quail’s desire for significance is fulfilled, but in the worst possible way.

---

### **Layer 3: The “ultimate fantasy”**
This is the story’s most brilliant move.

The government wants to bury the Mars memories under something so emotionally satisfying that Quail will never dig them up again. So they ask Rekal:

> “What is his deepest wish?”

And the answer is absurd, childish, and revealing:

- As a boy, Quail met aliens.  
- He showed mercy.  
- They promised not to invade Earth as long as he lived.  
- He is literally the linchpin of planetary safety.

It’s narcissism distilled to its purest form — the fantasy of being secretly the most important person alive.

```
LAYER STACK
-----------
  +-------------------------------+
  | L3  Child-savior / messiah    |  <-- "ultimate fantasy" == history
  +-------------------------------+
  | L2  Erased Interplan assassin |  <-- government wipe, incomplete
  +-------------------------------+
  | L1  Purchased Mars vacation   |  <-- commercial ImplantedMemory
  +-------------------------------+
  | L0  Clerk, critical wife,     |  <-- cover identity
  |     daydream of valleys       |
  +-------------------------------+
           ^
           |  each layer down is supposed to be "more fake"
           |  each layer down is more true

```

And then Dick flips the table:

> **That memory is real too.**

This is the recursive punchline.  
Quail’s fantasies aren’t fantasies.  
His delusions aren’t delusions.  
His deepest wish isn’t wishful thinking — it’s history.

The story ends right at the moment the technicians realize they cannot overwrite reality because reality keeps matching the fantasy.

## Vs. Total Recall films
The 1990 and 2012 *Total Recall* films keep the Rekal/Mars setup and the “is this real?” question, then replace Dick’s quiet, recursive ending with chase sequences, mutants, and a revolution on Mars. The short story stays small, interior, and unresolved on purpose.

### **Why the films diverge**
The *Total Recall* films keep:
- Rekal  
- Mars  
- the question of reality  
- the “secret agent” fantasy  

But they replace Dick’s quiet recursion with:
- chases  
- mutants  
- revolutions  
- conspiracies  
- and a clear answer to “is this real?”

Dick’s story refuses resolution.  
The films demand it.

```
FILM DIVERGENCE (not part of Dick machine)
------------------------------------------
  story.end  = "your deepest fantasy is real"   // unresolved recursion
  film.end   = "shoot the bad guys / save Mars" // resolution demanded

```

Dick ends with:
> “Your deepest fantasy is real.”

The films end with:
> “Shoot the bad guys and save Mars.”

They’re fun, but they’re not doing Dick’s epistemic collapse.

---

## Future work 
- Quail as a narcissistic protagonist  
- Dick’s use of memory as horror  
- How the story fits into Dick’s larger paranoia themes  
- A structural diagram of the recursion layers
