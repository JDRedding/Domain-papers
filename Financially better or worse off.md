# Financially better or worse off
This note provides a short toolkit of formulas to decide whether someone is financially "better or worse off" between two dates (base period t and later period T). It shows how to convert nominal amounts into real (inflation‑adjusted) terms, compares real incomes, and gives simple indices and examples for interpreting results.

**Generalized mathematical formulas** for assessing whether someone is financially better or worse off between any two dates (earlier period $t$ and later period $T $, with $T > t$). These formulas apply to any pair of dates. Substitute the appropriate CPI values and income/cost figures for periods $t$ and $T$ to obtain a quantitative answer.

---

### 1. Percentage change (nominal)

$$
\{Percentage}\Delta X = \frac{X_{T} - X_{t}}{X_{t}} \times 100\{Percentage}
$$

- $X$: any nominal quantity (income, wage, price, expenses, net worth, etc.).

### 2. Inflation rate between the two periods
Using the Consumer Price Index (CPI):

$$
\pi = \frac{\mathrm{CPI}_{T} - \mathrm{CPI}_{t}}{\mathrm{CPI}_{t}}
$$

or as a percentage:

$$
\pi_{percent} = \pi \times 100 {percent}
$$

$$\mathrm{CPI}_{t}$$, $$\mathrm{CPI}_{T}$$ : Consumer Price Index in periods $t$ and $T$.

### 3. Real (inflation-adjusted) value in base-period dollars
Express a period-$T $ amount in period-$t $ purchasing-power terms:

$$
X_{\mathrm{real},T}^{(t\$)} = X_{T} \times \frac{\mathrm{CPI}_{t}}{\mathrm{CPI}_{T}}
$$

Equivalently:

$$
X_{\mathrm{real},T}^{(t\$)} = \frac{X_{T}}{1 + \pi}
$$

### 4. Real income / wage comparison (core test of “better or worse off”)

$$
I_{\mathrm{real},T}^{(t\$)} \gtrless I_{t}
$$

or the percentage change in real income:

$$
\%\Delta I_{\mathrm{real}} = \left( \frac{I_{T} / \mathrm{CPI}_{T}}{I_{t} / \mathrm{CPI}_{t}} - 1 \right) \times 100\%
$$

- $I_{t}$, $I_{T}$: nominal income (or wage, disposable income, etc.) in the respective periods.
- $\%\Delta I_{\mathrm{real}} > 0$ → higher real purchasing power (better off, all else equal).
- $\%\Delta I_{\mathrm{real}} < 0$ → lower real purchasing power (worse off).

### 5. Purchasing-power index

$$
\mathrm{PP}_{u} = \frac{I_{u}}{\mathrm{CPI}_{u}} \quad (u = t \text{ or } T)
$$

Relative change:

$$
\frac{\mathrm{PP}_{T}}{\mathrm{PP}_{t}} - 1
$$

### 6. Specific cost example (e.g., gasoline)
Real price in period-$t $ dollars:

$$
P_{\mathrm{gas, real},T}^{(t\$)} = P_{\mathrm{gas},T} \times \frac{\mathrm{CPI}_{t}}{\mathrm{CPI}_{T}}
$$

Change in real cost for a fixed quantity $Q$:

$$
\Delta C_{\mathrm{real}} = Q \times \bigl( P_{\mathrm{gas, real},T}^{(t\$)} - P_{\mathrm{gas},t} \bigr)
$$

### Notation summary
| Symbol                        | Meaning                                              |
|-------------------------------|------------------------------------------------------|
| $t$                       | Earlier (base) period   |
| $T$                       | Later period ($T > t $) |
| $X_{t} $, $X_{T}$      | Nominal quantity in periods $t $ and $T $ |
| $I_{t} $, $I_{T}$      | Nominal income/wage in periods $t $ and $T $   |
| $\mathrm{CPI}_t$ | Consumer Price Index in period $t$ (original/base period) |
| $\mathrm{CPI}_T$ | Consumer Price Index in period $T$ (target period) |
| $\pi$                     | Cumulative inflation rate (decimal) between $t $ and $T $ |
| $X_{\mathrm{real},T}^{(t^\{dollar})}$ | Real value of a period - $T$ amount expressed in period - $t$ dollars |
| $\mathrm{PP}_{u}$         | Purchasing-power measure in period $u$ |
| $\{Percent}%\Delta$                | Percentage change   |

---

**Takeaway:**  
**Pure mathematical formulas** describing whether financially better or worse off. Below is a clean, ASCII‑stable, RDG‑compatible block of equations can directly use.

---

## 📐 **Financial Delta Equations**

### 1. **Real Income Change**

$$
\text{RealIncome}_{t} = \frac{Y_{t}}{1+\pi_{t}}
$$

$$
\Delta \text{RealIncome} = \text{RealIncome}_{now} - \text{RealIncome}_{earlier}
$$

**Notation:**  

- $Y_t$ — nominal income at time $t$  
- $\pi_t$ — inflation rate between earlier and $t$  
- Positive $\Delta \text{RealIncome}$ ⇒ better off.

---

### 2. **Real Purchasing Power Index**

$$
\text{PPI}_{t} = \frac{Y_{t}}{C_{t}}
$$

$$
\Delta \text{PPI} = \text{PPI}_{now} - \text{PPI}_{earlier}
$$

**Notation:**  
- $C_t$ — cost‑of‑living index (CPI or personal basket)

---

### 3. **Debt Burden Ratio**

$$
\text{DBR}_{t} = \frac{D_{t}}{Y_{t}}
$$

$$
\Delta \text{DBR} = \text{DBR}_{now} - \text{DBR}_{earlier}
$$

**Notation:**  

- $D_t$ — total debt obligations  
- Higher DBR ⇒ worse off.

---

### 4. **Interest Cost Load**

$$
\text{ICL}_{t} = r_{t} \cdot D_{t}
$$

$$
\Delta \text{ICL} = \text{ICL}_{now} - \text{ICL}_{earlier}
$$

**Notation:**  
- $r_t$ — effective interest rate  
- Higher ICL ⇒ worse off.

---

### 5. **Savings Position**

$$
\text{SavingsRate}_{t} = \frac{S_{t}}{Y_{t}}
$$

$$
\Delta \text{SavingsRate} = \text{SavingsRate}_{now} - \text{SavingsRate}_{earlier}
$$

**Notation:**  

- $S_t$ — annual savings  
- Higher savings rate ⇒ better off.

---

### 6. **Net Financial Position (NFP)**
This is the combined scalar can use as a “final score.”

$$\text{NFP}_{t} = \left( \frac{Y_{t}}{1+\pi_{t}} \right)- D_{t}- r_{t}D_{t}+ S_{t}$$

$$
\Delta \text{NFP} = \text{NFP}_{now} - \text{NFP}_{earlier}
$$

If  

$$
\Delta \text{NFP} < 0
$$  

are **worse off**.  
 
If  

$$
\Delta \text{NFP} > 0
$$  

are **better off**.

---

## 📊 **Optional: Triadic decomposition**

### PED‑side (Power–Evaluation–Dynamics)

$$
\text{Power}_{t} = Y_{t}
$$

$$
\text{Evaluation}_{t} = \frac{1}{1+\pi_{t}}
$$

$$
\text{Dynamics}_{t} = \frac{d}{dt}(Y_{t} - D_{t})
$$

### SID‑side (Structure–Interaction–Dynamics)

$$
\text{Structure}_{t} = C_{t}
$$

$$
\text{Interaction}_{t} = r_{t}D_{t}
$$

$$
\text{Dynamics}_{t} = \frac{d}{dt}\text{NFP}_{t}
$$

