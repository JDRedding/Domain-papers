# ROMAN TERRITORIAL EVOLUTION 

## MATHEMATICAL MODEL

**Logistic-Constraint Model**

$$
\frac{dA}{dt} = r(t)\,A\left(1 - \frac{A}{K(t)}\right) - c(t)\,A
$$

**Control-Type State Vector $S(t)$**  
State-vector framing:

$$
S(t) = (s_D, s_C, s_I)
$$

is consistent with:

- **Roman provincial administration** (direct control)
- **Client kings / foederati** (indirect control)
- **Independent polities beyond the limes**

## NOTATION

- $t$: time in years (negative = BC, positive = AD)
- $A(t)$: direct-control area (km²)
- $A_{\max}$: peak area near 117 AD
- $r(t)$: effective expansion rate (campaigns, colonization, integration)
- $K(t)$: carrying capacity (administrative/logistical ceiling)
- $c(t)$: collapse/erosion rate (migrations, civil war, external pressure)
- $\phi(t)$: order parameter = $A(t)/K$
- $S(t)$: control-type state vector
- $s_D(t)$: fraction under direct provincial administration
- $s_C(t)$: fraction under client/ally arrangements
- $s_I(t)$: fraction independent/hostile within interaction sphere
- $M(t)$: piecewise-constant transition matrix for $S$

## FUNDAMENTALS

- Core = city of Rome + Italian peninsula
- Expansion via conquest, colonization, clientage
- Peak logistics/administration at 117 AD
- Contraction via external pressure (migrations, Sassanids) + internal fragmentation

**Types of control:**

- Direct provincial administration
- Allied/client tribes
- Independent or hostile polities

## ANCHOR POINTS

- $t = -350$: $A \approx 5 \times 10^3$ km² — Early Republic / city-state core
- $t = -200$: $A \approx 1.5 \times 10^5$ km² — Mid-Republic (Italy + coastal footholds)
- $t = 117$: $A \approx 5.0 \times 10^6$ km² — Trajanic peak (Britain to Mesopotamia)
- $t = 486$: $A \approx 1.0 \times 10^6$ km² — Post-Western collapse (Eastern remnant)

## CORE DIFFERENTIAL EQUATION

$$
\frac{dA}{dt} = r(t) \cdot A \cdot \left(1 - \frac{A}{K(t)}\right) - c(t) \cdot A
$$

**Minimal piecewise constants:**

- $r(t) = r_1$ for $t \in [-350, -200]$
- $r(t) = r_2$ for $t \in (-200, 117]$
- $r(t) = r_3$ for $t \in (117, 486]$
- $K(t) \approx K =$ constant
- $c(t) = 0$ for $t \leq 300$
- $c(t) = c_0$ for $t > 300$

## CLOSED-FORM PIECEWISE 

**Exact rates:**

- $r_1 \approx 0.022675$ yr⁻¹
- $r_2 \approx 0.018539$ yr⁻¹ (with $K = 5.5 \times 10^6$)
- $\lambda \approx 0.004362$ yr⁻¹ (post-peak decay)

$$
A(t) =
\begin{cases}
5 \times 10^3 \cdot \exp\bigl(0.022675 \cdot (t + 350)\bigr) & \text{for } -350 \leq t \leq -200 
\dfrac{5.5 \times 10^6}{1 + \bigl(\dfrac{5.5 \times 10^6}{1.5 \times 10^5} - 1\bigr) \cdot \exp\bigl(-0.018539 \cdot (t + 200)\bigr)} & \text{for } -200 < t \leq 117 
5 \times 10^6 \cdot \exp\bigl(-0.004362 \cdot (t - 117)\bigr) & \text{for } 117 < t \leq 486
\end{cases}
$$

## CONTROL-TYPE STATE VECTOR

$$
S(t) = \begin{bmatrix} s_D(t) \\ s_C(t) \\ s_I(t) \end{bmatrix}
$$

with $s_D + s_C + s_I = 1$

**Regime values:**

- $S(-350) \approx (0.10, 0.20, 0.70)$
- $S(-200) \approx (0.30, 0.30, 0.40)$
- $S(117) \approx (0.60, 0.25, 0.15)$
- $S(486) \approx (0.20, 0.30, 0.50)$

**Evolution:**

$$
\frac{dS}{dt} = M(t) \cdot S(t)
$$

$M$ piecewise constant per interval (finite differences between anchors)

## PHASE FRAMING

$$
\phi(t) = \frac{A(t)}{K}
$$

- **Phase I (City-State/Regional):** $\phi \ll 1$, high $s_I$, $r \approx r_1$
- **Phase II (Imperial):** $\phi \sim 1$, high $s_D$, $c \approx 0$
- **Phase III (Fragmented):** $\phi < 1$, rising $s_I$, $c > 0$

Transitions near $\phi \approx 0.1$ (around −200) and $\phi \approx 0.9$ (around 117)

## NOTES

- Continuous at breakpoints when parameters match anchors
- Historical estimates: Trajanic peak ~5e6 km²; 200 BC nearer 3–4e5 km² possible
- Extendable to population, legion counts, or smooth $r(t)/c(t)$ via numerical integration

---

## AREAS OF ROMAN CONTROL

### 350 BC (EARLY REPUBLIC / CITY-STATE PHASE)

RAETIANS · COTTI · VENETI · SCORDISCI · LIGURIANS · GAULS · ILLYRIANS · MASSALIA · ROME · CARTHAGE · MASSYLII

**Early Republic**  
Rome controls Latium and parts of central Italy via the *socii* system. No provinces yet.

**Direct / Allied (Roman sphere):**

- Rome
- Latins
- Campanians

**Independent / Outside control:**

- Etruscans
- Samnites
- Umbrians
- Picentes
- Veneti
- Ligurians
- Gauls
- Illyrians
- Massalia
- Carthage

**Key:** Rome = core control (Latium + expanding in central Italy via alliances and colonies). Surrounding tribes independent or loosely allied. Control still mostly *socii* system, not provinces.

### 200 BC (REPUBLIC EXPANSION)

GAULO-CELTIC TRIBES · LIGURIANS · AQUITANI · ASTURES · VACCAEI · ILLYRIANS · MASSALIA · ROME · THRACE · PERGAMON · MAURETANIA · NUMIDIA · CARTHAGE · CRETE · MAURI · MUSULAMI · GAETULIANS · PTOLEMAIC KINGDOM · GARAMANTES · LIBYANS · ROMAN REPUBLIC

**Mid-Republic Expansion**  
Rome controls Italy, Sicily, Sardinia, Corsica, and footholds in Hispania.

**Direct / Provincial:**

- Italia
- Sicilia
- Sardinia-Corsica
- Hispania_Citerior
- Hispania_Ulterior

**Allied / Client:**

- Massalia
- Numidia
- Pergamon

**Independent / Outside control:**

- Gauls
- Ligurians
- Aquitani
- Iberian_tribes
- Illyrians
- Carthage
- Ptolemaic_Kingdom

(Quadi, Dacians, Getae are anachronistic for 200 BC.)

**Key:** Republic holds all of peninsular Italy + Sicily, Sardinia, Corsica, eastern/southern Hispania footholds. Influence in N. Africa (Numidia ally) and eastern Mediterranean starting. No full Gaul or Greece yet. Some labels (Quadi, Dacians) are later.

### 117 AD (EMPIRE PEAK UNDER TRAJAN)

BRITANNIA · GALLIA · GERMANIA · RAETIA · NORICUM · PANNONIA · DACIA · MOESIA · THRACIA · ITALIA · HISPANIA · MACEDONIA · ASIA · ARMENIA · MAURETANIA · AFRICA · NUMIDIA · ACHAIA · PONTUS · MESOPOTAMIA · SYRIA · AEGYPTUS · ARABIA · MARE INTERNUM · CRETA · CYPRUS · ROXOLANI · ALANI · AORSI · SARMATIA

**Trajanic Peak**  
Full Mediterranean rim; temporary Mesopotamian annexations.

**Direct / Provincial:**

- Britannia
- Gallia
- Germania
- Raetia
- Noricum
- Pannonia
- Dacia
- Moesia
- Thrace
- Italia
- Hispania
- Asia
- Syria
- Aegyptus
- Mesopotamia

**Client / Allied:**

- Armenia

**Independent / Outside control:**

- Hibernia
- Sarmatians
- Roxolani
- Alani
- Parthian_Empire

(Hunni, Aorsi, Amadoci are later or uncertain.)

**Key:** Maximum extent (~5 million km²). Britain to Mesopotamia (temporary eastern gains), Rhine/Danube frontiers, full Mediterranean rim. Hibernia never controlled. Hunni not present yet. Client tribes and limes beyond borders.

### 486 AD (POST-WESTERN COLLAPSE)

FRANKS · ALAMANNI · BURGUNDY · OSTROGOTHS · GOTHS · VISIGOTHS · SUEVI · VANDALS · MAURI · GAETULI · ROMAN EMPIRE (EAST / BYZANTINE) · PERSIAN EMPIRE · LAKHMIDS · GARAMANTES · AUSTORIANS · LAGUANTAN

**Post-Western Collapse**  
Western Empire replaced by Germanic kingdoms; Eastern Empire survives.

**Direct / Provincial (Eastern Roman):**

- Anatolia
- Thrace
- Greece
- Egypt
- Levant

**Successor Kingdoms (formerly Roman West):**

- Franks
- Visigoths
- Ostrogoths
- Burgundians
- Suevi
- Vandals

**Independent / Outside control:**

- Sassanid_Persian_Empire
- Lakhmids
- Berber_groups

(Lombards, Slavs, Ogurs, Sabirs rise later in the 6th century.)

**Key:** Western Empire fragmented into Germanic kingdoms (Italy under Odoacer/soon Ostrogoths, Gaul under Franks, Hispania Visigoths/Suevi, Africa Vandals). Eastern remnant holds Balkans, Anatolia, Egypt, parts of Levant/Syria under Sassanid pressure. Lombards, Slavs, Tuaregs are later.

### TYPES OF CONTROL

- Direct provincial administration (governors, taxation, legions)
- Allied / client tribes and kingdoms (*socii*, *foederati*, client kings)
- Independent or hostile polities beyond the limes
- Residual Roman administrative forms inside successor kingdoms

### VARIABLES

Provinces · Client states · Limes (frontiers) · Citizenship grants · Road network · Legionary presence · Fiscal base · Migration pressure · Sassanid rivalry

### FUNDAMENTALS

Core = city of Rome + Italian peninsula.  
Expansion via conquest, colonization, alliance networks, and the provincial system (first Sicily after 1st Punic War).  
Peak logistics and administration under the Principate (Mare Nostrum).  
Contraction via external pressure (Germanic migrations, Hunnic impact later, Sassanids) + internal fragmentation, fiscal strain, and overextension.  
By late 5th century the West had become Germanic kingdoms preserving many Roman forms; the East continued as the Roman Empire.

---

## AREAS OUTSIDE ROMAN CONTROL

### 350 BC

RAETIANS · COTTI · VENETI · SCORDISCI · LIGURIANS · GAULS · ILLYRIANS · MASSALIA · CARTHAGE · MASSYLII

### 200 BC

GAULO-CELTIC TRIBES · QUADI · SCYTHIAN · AQUITANI · LIGURIANS · DACIANS · ASTURES · POLCAE · ILLYRIANS · GETAE · VACCAEI · MASSALIA · THRACE · PERGAMON · MAURETANIA · NUMIDIA · CARTHAGE · CRETE · MAURI · MUSULAMI · GAETULIANS · PTOLEMAIC KINGDOM · GARAMANTES · LIBYANS

### 117 AD

HYBERNIA · OCEANUS GERMANICUS · GUTTONES · OCEANUS ATLANTICUS · SARMATIA · HUNNI · AMADOCI · NAVARI · CARPI · ROXOLANI · ALANI · AORSI · REGNUM PARTHORUM

### 486 AD

ARMORICA · FRANKS · ALAMANNI · LOMBARDS · CROATS · SLOVENES · SABIRS · BURGUNDY · OSTROGOTHS · GOTHS · ANTES · SUEVI · VISIGOTHS · SKLAVENI · OGURS · MAURI · VANDALS · IBERIA · ALBANIA · GAETULI · AUSTORIANS · LAGUANTAN · PERSIAN EMPIRE · GARAMANTES · TUAREGS · KINDAH · LAKHMIDS
