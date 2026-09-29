# Relational Galaga 
Relational Formal Specification (One‑Page)

## **1. Typed Objects (STR‑mode)**  
Define the object universe:

- **FTR** : Fighter  
- **ENY** : Enemy  
  - ENY.zako  
  - ENY.goei  
  - ENY.boss  
- **CAP** : Captured‑fighter token  
- **FRM** : Formation cell  
- **DIV** : Dive‑path token  
- **CHG** : Challenge‑stage token  
- **SCR** : Score accumulator  
- **LIV** : Life counter  

Typed relations:

- `pos(FTR) ∈ bottom_lane`  
- `pos(ENY) ∈ FRM ∪ DIV`  
- `state(ENY) ∈ {formation, entering, diving}`  
- `escort(ENY.boss) = e ∈ {0,1,2}`  
- `hits(ENY.boss) ∈ {0,1,2}`  
- `captured(FTR) ∈ {none, CAP}`  

---

## **2. Interaction Operators (INT‑mode)**  
All scoring is a pure operator:

### **2.1 Base scoring operator**  

$$
\mathbf{SCORE} : (SCR, ENY, state) \rightarrow SCR'
$$

Where:

- **Bee_in_formation**
  
$$
SCORE(S, ENY.zako, formation) = S + 50
$$

- **Bee_diving**  

$$
SCORE(S, ENY.zako, diving) = S + 100
$$

- **Butterfly_in_formation**  

$$
SCORE(S, ENY.goei, formation) = S + 80
$$

- **Butterfly_diving**  

$$
SCORE(S, ENY.goei, diving) = S + 160
$$

- **Boss_in_formation**  

$$
SCORE(S, ENY.boss, formation) = S + 150
$$

- **Boss_diving**  

$$
SCORE(S, ENY.boss, diving) =
\begin{cases}
S+400 & e=0 \\
S+800 & e=1 \\
S+1600 & e=2
\end{cases}
$$

- **Captured_fighter_score**  

$$
SCORE(S, CAP, destroyed) = S + 1000
$$

---

### **2.2 Transform (bonus‑bug) operator**  
Single transform:

- **Transform_single**  

$$
SCORE(S, transform) = S + 160
$$

Set‑of‑three bonus:

- **Scorpion_bonus**  
- **Stingray_bonus**  
- **Flagship_bonus**  

$$
B_{\text{set}} =
\begin{cases}
1000 & \text{Scorpions} \\
2000 & \text{Stingrays} \\
3000 & \text{Flagships}
\end{cases}
$$

---

## **3. Challenge‑Stage Operators (INT‑mode)**  

### **3.1 Group‑clear bonus**  
Let $k$ be challenge‑stage index.

$$
G(k)=
\begin{cases}
1000 & k=1,2 \\
1500 & k=3,4 \\
2000 & k=5,6 \\
3000 & k\ge 7
\end{cases}
$$

### **3.2 Accuracy bonus**  
Let $h$ be hits (0–40):

$$
P_{\text{challenge}} =
\begin{cases}
10000 & h=40 \\
100h & h<40
\end{cases}
$$

Operator form:

$$
SCORE\_CHG(S, h, k) = S + \sum_{g=1}^{5} G(k) + P_{\text{challenge}}
$$

---

## **4. Life‑Award Operators (INT‑mode)**  
Let thresholds be DIP‑switch constants:

- **First_extra_ship**: $S_1 ∈ \{20000,30000\}$  
- **Subsequent_extras**: $S_\Delta ∈ \{60000,70000\}$

Define:

$$
\mathbf{LIFE\_CHECK}(SCR) =
\begin{cases}
LIV+1 & SCR \ge S_1 + n S_\Delta \\
LIV & \text{otherwise}
\end{cases}
$$

---

## **5. Dual‑Fighter State Machine (DYN‑mode)**  

### **5.1 Fighter state**  

$$
state(FTR) ∈ \{single, dual\}
$$

### **5.2 Fire‑rate operator**  

$$
\mathbf{FIRE}(state) =
\begin{cases}
2 & \text{single} \\
4 & \text{dual}
\end{cases}
$$

### **5.3 Collision operator**  

$$
\mathbf{HIT}(FTR) =
\begin{cases}
state' = single & \text{if state = dual} \\
LIV' = LIV - 1 & \text{if state = single}
\end{cases}
$$

### **5.4 Capture operator**  
Boss captures fighter:

$$
\mathbf{CAPTURE}(FTR, ENY.boss) :
\begin{cases}
captured(FTR) = CAP \\
LIV' = LIV - 1
\end{cases}
$$

### **5.5 Rescue operator**  
Rescue only if:

- same boss  
- boss is diving  
- CAP attached

$$
\mathbf{RESCUE}(FTR, ENY.boss) =
\begin{cases}
state' = dual & \text{if boss destroyed during dive} \\
state' = single & \text{if boss destroyed in formation (CAP becomes hostile)}
\end{cases}
$$

---

## **6. Game‑Loop Skeleton (DYN‑mode)**  
A minimal relational loop:

```
while LIV > 0:
    spawn_wave()
    while enemies_exist():
        update_positions(FRM, DIV)
        if FIRE(state(FTR)) hits ENY:
            SCORE(...)
            if ENY.boss and CAPTURE-event:
                CAPTURE(...)
        if ENY.boss destroyed and CAP attached:
            RESCUE(...)
        if collision(FTR, ENY):
            HIT(FTR)
    if stage ∈ challenge:
        SCORE_CHG(...)
    LIFE_CHECK(SCR)
```

---
