# 🎮 Complete rulebook  
 Board‑Game Style Mathematical Ruleset

# 🎮 **RealSports Baseball**

## 1. Field Geometry  
The field is a **diamond + infinite outfield**.

### 1.1 Bases  

$$
B_0 = (0,0),\quad B_1 = (1,1),\quad B_2 = (0,2),\quad B_3 = (-1,1)
$$

### 1.2 Infield Region  

$$
\mathcal{I} = \{(x,y)\mid |x|+|y|\le 2\}
$$

### 1.3 Outfield (the Green Void) 

$$
\mathcal{G} = \{(x,y)\mid y > 2\}
$$

The outfield has **no upper boundary**:

$$
\sup\{y\mid (x,y)\in\mathcal{G}\} = +\infty
$$

---

## 2. Ball Motion  
RealSports Baseball uses **straight‑line arcade motion**.

### 2.1 Discrete Time  

$$
t \in \mathbb{N}
$$

### 2.2 Ball Position  

$$
\vec{r}_{\text{ball}}(t) = \vec{r}_0 + t\,\vec{v}
$$

### 2.3 Velocity  

$$
\vec{v} = (v_x, v_y),\qquad v_x,v_y\in\{-2,-1,0,1,2\}
$$

No gravity term:

$$
\vec{a} = \vec{0}
$$

---

## 3. Bat–Ball Contact  
A hit occurs when the bat’s zone overlaps the ball’s zone.

### 3.1 Bat Zone  

$$
Z_{\text{bat}} = \{(x,y)\mid |x-x_b|\le \delta,\ |y-y_b|\le \delta\}
$$

### 3.2 Hit Condition  

$$
\text{Hit}(t)=
\begin{cases}
1 & \vec{r}_{\text{ball}}(t)\in Z_{\text{bat}} \\
0 & \text{otherwise}
\end{cases}
$$

---

## 4. Fielder Logic  
Fielders move toward the ball unless the ball enters the void.

### 4.1 Fielder Position  
$$
\vec{r}_{i}(t)
$$

### 4.2 Fielder Motion Rule  

$$
\vec{r}_{i}(t+1)=
\begin{cases}
\vec{r}_{i}(t)+{sgn}\big(\vec{r}_{\text{ball}}(t)-\vec{r}_{i}(t)\big) & \text{if ball in infield} \\
\vec{r}_{i}(t) & \text{if ball in void}
\end{cases}
$$

### 4.3 Confusion Index  

$$
C = \sum_{i=1}^{N_{\text{fielders}}} 
\mathbf{1}\left\{
\vec{r}_{i}(t+1)-\vec{r}_{i}(t)\ \text{points away from ball}
\right\}
$$

---

## 5. Home‑Run Condition  
A home run occurs when the ball enters the infinite outfield.

$$
\vec{r}_{\text{ball}}(t)\in\mathcal{G}
\quad\Longrightarrow\quad
\text{HOMERUN}
$$

Or explicitly:

$$
y_{\text{ball}}(t) > 2 \Rightarrow \text{HOMERUN}
$$

---

## 6. Green Void Distance  
The ball travels into the void until it leaves the visible screen.

### 6.1 Visible Screen Height  
$$
Y_{\max} = 191
$$

### 6.2 Void Distance  
$$
D_{\text{void}} = y_{\text{ball}}(t_{\text{vanish}}) - 2
$$

Where:

$$
t_{\text{vanish}} = \min\{t\mid y_{\text{ball}}(t) > Y_{\max}\}
$$

---

## 7. Home‑Run Thrill Coefficient  
A board‑game‑style “fun score.”

$$
T = \frac{D_{\text{void}}}{C+1}\cdot \kappa
$$

Where:

- $D_{\text{void}}$ = distance ball travels into green  
- $C$ = fielder confusion index  
- $\kappa$ = nostalgia constant ($\kappa\gg 1$ for 1980s kids)

---

## 8. Joy Integral  
The emotional payoff of a successful hit.

$$
\text{Magic} = \int_{t_{\text{swing}}}^{t_{\text{vanish}}} J(t)\,dt
$$

Where:

$$
J(t)=\alpha\cdot\text{childhood}(t)+\beta\cdot\text{CRT glow}(t)
$$

And because the void is infinite:

$$
\lim_{t_{\text{vanish}}\to\infty}\text{Magic}=\infty
$$

---
