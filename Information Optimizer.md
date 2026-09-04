# Interdependent Information Optimizer
***US7530013B2***

This invention relates to systems that implement methods of transformation of collections of interdependent information. Usually such information is inputted and stored as fragments within systems such as electronic spreadsheets. The need to transform that interdependent information arises when high-speed, frequently repetitive calculating operations must be performed in short time intervals.

The main disadvantages of known input-and-storage systems arise because their functional structure assumes, at every step of repetitive calculation, a full process of identifying dependencies and preparing and using the entire interdependent collection.

The objective of this invention is an **Optimizer of Interdependent Information** whose construction realizes new methods of ordered reading and transformation of fragments of interdependent information. The Optimizer prepares that information into a type and form convenient for subsequent high-speed repetitive calculation.

The IOS, the Information Zones Assignment Unit, and the links to spreadsheet-type System 9 prepare several characteristics of the interdependent collection at once, which makes translation into a form optimal for dynamic processing more efficient.

The Optimizer is intended for systems that must perform high-speed calculations many times over large collections of interdependent information.

## Background

Known systems of input and storage of interdependent information, such as electronic-spreadsheet systems, do not allow high speed when calculating operations are repeated many times in a short interval. Using those systems in direct interaction with external systems of dynamic processing of interdependent information therefore limits the efficiency of the latter.

The new capabilities come from combining:

- an Information Reading and Ordering Subsystem  
- a Translation Subsystem  
- an Information Zones Assignment Unit  

Together with internal functional links and external links to:

- an external System of Input and Storage of Interdependent Information, and  
- an external System of Dynamic Processing of Interdependent Information  

this combination provides a new channel of communication and transformation between those two external systems.

The illustrative embodiment is a method of optimizing a spreadsheet characterized by a plurality of cell formulas and their interdependence, comprising:

1. reading a plurality of cell formulas and their interdependence; and  
2. transforming the cell formulas and their interdependence into a sequence of instructions.

##  Description 

```text
╔══════════════════════════════════════════════════════════════════════════╗
║     OPTIMIZER OF INTERDEPENDENT INFORMATION                              ║
║     Types · Variables · Fundamentals                                     ║
╚══════════════════════════════════════════════════════════════════════════╝

  TYPES
    9     : external System of Input and Storage of Interdependent Info
            (electronic-spreadsheet type)
    9.1   : Input Information Zone
    9.2   : Interdependent Output Information Zone
    9.3   : Interdependent Main Information Zone
    1     : Optimizer of Interdependent Information
    IOS   : Information Reading and Ordering Subsystem  (units 3–6)
    TS    : Translation Subsystem                       (units 7–8)
    10    : external System of Dynamic Processing of Interdependent Info

  UNITS
    2     : Information Zones Assignment Unit
    3     : Unit of Ordering Reading of Information
    4     : Input Information Identification Unit
    5     : Output Information Identification Unit
    6     : Memory Unit (ordered fragments)
    7     : Translation Unit
    8     : Memory Unit (translated fragments)

  VARIABLES
    Zi    : assignment of input-zone location  (9.1)
    Zo    : assignment of output-zone location (9.2)
    Io    : interdependent output information  (from 9.2)
    I     : main interdependent collection     (from 9.3)
    Ior   : ordered collection of fragments
    Pi    : fragments containing input  parameters
    Po    : fragments containing output parameters
    Iort  : translated ordered collection
    Pit   : translated input-parameter information
    Pot   : translated output-parameter information

  FUNDAMENTALS
    Spreadsheet cells hold interdependent fragments.
    Optimizer reads once, orders by dependence, translates to
    instruction sequence / machine form, then System 10 repeats
    high-speed calculation with changing Pi without re-identifying
    the whole graph each step.

╔══════════════════════════════════════════════════════════════════════════╗
║                              SYSTEM 9                                    ║
║   ┌─────────────┬─────────────────────┬─────────────────────┐            ║
║   │     9.1     │        9.2          │        9.3          │            ║
║   │  Input Zone │  Output Zone  Io ↓  │  Main Zone     I ↓  │            ║
║   └─────────────┴─────────────────────┴─────────────────────┘            ║
╚═══════════════════════╤═══════════════════════╤══════════════════════════╝
                        │ control               │ data  Io, I
                        │                       ▼
╔═══════════════════════╧══════════════════════════════════════════════════╗
║ OPTIMIZER 1                                                              ║
║                                                                          ║
║  Zi ──►┌─────┐                                                           ║
║  Zo ──►│  2  │── assignment Zi ──────────────────────────────┐           ║
║        └─────┘── assignment Zo ───────────────────────┐      │           ║
║                                                       │      │           ║
║                    IOS                                │      │           ║
║        ┌──────────────────────────────────────────────┼──────┼─────────┐ ║
║        │                                              ▼      ▼         │ ║
║        │          Io,I ►┌─────┐  ordered stream                        │ ║
║        │                │  3  │────┬──────────►┌─────┐                 │ ║
║        │                └─────┘    │           │  4  │ Pi              │ ║
║        │                           │           └─────┘                 │ ║
║        │                           └──────────►┌─────┐                 │ ║
║        │                                       │  5  │ Po              │ ║
║        │                                       └─────┘                 │ ║
║        │           Ior          Pi           Po                        │ ║
║        │            ▼            ▼            ▼                        │ ║
║        │        ┌───────────────────────────────────┐                  │ ║
║        │        │                6                  │  MEMORY          │ ║
║        │        └───────────────────────────────────┘                  │ ║
║        └──────────────────────────┬────────────────────────────────────┘ ║
║                                   │ Ior, Pi, Po + control                ║
║                    TS             ▼                                      ║
║        ┌───────────────────────────────────────────────────────────────┐ ║
║        │        ┌───────────────────────────────────┐                  │ ║
║        │        │                7                  │  TRANSLATION     │ ║
║        │        └───────────────────────────────────┘                  │ ║
║        │           Iort         Pit          Pot                       │ ║
║        │            ▼            ▼            ▼                        │ ║
║        │        ┌───────────────────────────────────┐                  │ ║
║        │        │                8                  │  MEMORY          │ ║
║        │        └───────────────────────────────────┘                  │ ║
║        └──────────────────────────┬────────────────────────────────────┘ ║
╚═══════════════════════════════════╪══════════════════════════════════════╝
                                    │ Iort   Pit   Pot
                                    ▼
╔══════════════════════════════════════════════════════════════════════════╗
║                              SYSTEM 10                                   ║
║           Dynamic Processing  (high-speed repeated calculation)          ║
╚══════════════════════════════════════════════════════════════════════════╝

  ORDERING MODES IN UNIT 3
    • output-first  : Po  ──chain──►  Pi
    • input-first   : Pi  ──chain──►  Po
    • bidirectional : any fragment ── both directions
    • combined      : mixtures of the above
    Unit 6 stores every produced interdependence chain.
```

| Unit | Name |
|------|------|
| 2 | Information Zones Assignment Unit |
| 3 | Unit of Ordering Reading of Information |
| 4 | Input Information Identification Unit |
| 5 | Output Information Identification Unit |
| 6 | Memory Unit |
| 7 | Translation Unit |
| 8 | Memory Unit |

### Internal connections

- Unit **2** has two assignment inputs and two corresponding outputs.  
- Unit **3** has a control output, a data output, and a data input.  
- Unit **4** has an assignment input connected to the first output of Unit 2, a data input connected to the data output of Unit 3, and a data output.  
- Unit **5** has an assignment input connected to the second output of Unit 2, a data input connected to the data output of Unit 3, and a data output.  
- Memory Unit **6** has three data inputs connected to the data outputs of Units 3, 4, and 5; three data outputs; and a control output.  
- Translation Unit **7** has three data inputs from Unit 6, a control input from Unit 6, three data outputs, and a control output.  
- Memory Unit **8** has three data inputs from Unit 7, a control input from Unit 7, and three data outputs.

Units **3–6** and their links comprise the **Information Reading and Ordering Subsystem (IOS)**.  
Units **7–8** and their links comprise the **Translation Subsystem (TS)**.

### External links

The control output and data input of Unit 3, and the three data outputs of Unit 8, are the Optimizer’s external ports.

- Control output of Unit 3 → control input of external **System of Input and Storage of Interdependent Information 9**.  
- Data input of Unit 3 ← data output of System 9.  
- Data outputs of Unit 8 → corresponding inputs of external **System of Dynamic Processing of Interdependent Information 10**.

System 9 may be an electronic spreadsheet with zones:

- **9.1** Input Information Zone  
- **9.2** Interdependent Output Information Zone  
- **9.3** Interdependent Main Information Zone  

Zones 9.2 and 9.3 may share a single data output of System 9.

### Operation

Optimizer **1** transforms interdependent information stored in System 9 into a form optimal for dynamic processing in System 10, so the full collection of fragments entered in 9 can be used independently by 10.

1. Before work begins, the operator enters into Unit 2:  
   - $Z_i$ — location of input zone 9.1  
   - $Z_o$ — location of output zone 9.2  

   Zone 9.2 holds interdependent output information $I_o$; zone 9.3 holds the main collection $I$. Fragments of $I_o$ and $I$ are entered in advance into the respective cells of the zoned spreadsheet, for later use in frequently repetitive calculations.

2. Unit 3 commands System 9 to read fragments from zones 9.2 and 9.3. Read information $I_o$ and $I$ arrives at the data input of Unit 3. Unit 3 performs **ordering reading**: step-by-step identification and ordering of fragments by their sequential interdependence in the cells.

3. Concurrently, Unit 3 sends that stream to Units 4 and 5. Unit 2 sends $Z_i$ and $Z_o$ to the assignment inputs of Units 4 and 5.  
   - Unit 4 identifies fragments that contain input parameters $P_i$.  
   - Unit 5 identifies fragments that contain output parameters $P_o$.

4. Outputs of Units 3, 4, and 5 feed Memory Unit 6, which stores:  
   - ordered collection $I_{\mathrm{or}}$  
   - fragments containing $P_i$  
   - fragments containing $P_o$

5. Unit 6 signals Translation Unit 7. Unit 7 transforms $I_{\mathrm{or}}$, $P_i$, and $P_o$ into a type optimal for high-speed repeated calculation (for example, translation of ordered fragments into machine code). The results $I_{\mathrm{ort}}$, $P_{it}$, and $P_{ot}$ are stored in Memory Unit 8 and delivered to System 10.

System 10 may then repeat the calculations many times with changing input-parameter values.

### Ordering alternatives in Unit 3

Step-by-step identification and ordering may proceed:

- from output-parameter fragments, along the interdependence chain toward input-parameter fragments;  
- from input-parameter fragments, along the chain toward output-parameter fragments;  
- from any fragment in both directions;  
- or combinations of the above.

Depending on the spreadsheet’s interdependencies, Unit 3 may form one or several chains. Unit 6 stores all such chains so Unit 7 can preserve that structure in the translated form.


