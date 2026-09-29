# Jamestown joint-stock firm

This document is a **systems specification**: Jamestown is treated as an early joint-stock firm whose surviving archive (Ferrar Papers + Kingsbury) is compiled into a *typed* **relational dynamic geometry (RDG)**. Graph, time series, and game theory become *views* of the same operator-driven state machine. The maidens program is modeled as a designed matching market intended to rewrite retention $\rho$ and family density $F$ in a tobacco-priced marriage mechanism.

## What this document enables

- A **compile path** from the Ferrar Papers into a machine-readable relational model.
- A **typed universe** of persons, documents, events, sites, ships, corporate bodies, stocks, women, husbands, policies, and matching events.
- A **state vector** $K(t)$ for the colony, 1606–1624.
- A **set of operators**: projection, enactment, aggregation, flow/cut, policy, hazard, reorganization.
- A **matching-market** formalization of the maidens program.
- A **multi-lens integration** in which graph, time series, game theory, and RDG sit on one machine.

It is the **schema + operator library** for building:

- a **temporal graph database** of Jamestown,  
- a **state machine** for 1606–1624,  
- a **matching-market simulator** for the maidens program,  
- a **shock model** for 1609–10 and 1622,  
- a **corporate-governance model** of the Virginia Company,  
- and a **counterfactual engine** (delay maidens, change price $p$, remove servant exclusion, etc.).

---

## Key Concept

> “Jamestown is a live-action case study in an early joint-stock firm.”  
> “The Ferrar Papers… are the closest thing to that firm’s source code.”

Those two sentences fix the model.

---

## 0. What this is

Jamestown is a live-action case study in an early joint-stock firm. The Ferrar Papers (family-kept, c. 1590–1790; Virginia core 1606–1624) are the closest thing to that firm’s source code: minutes, London–Jamestown letters, maps and plans, investments and supply costs, labor/land/marriage policy, manifests, crisis reports. John and Nicholas Ferrar are officers *and* archivists. Nicholas later bound the pile into the backbone of the Virginia Company Archives, with Kingsbury’s *Records* as the parallel published court books.

**Compile path (if built)**

1. `document(doc_id, date, class, authors, addressees)` — one row per Ferrar item / Kingsbury page.  
2. `edge(src, dst, type, t0, t1, qty)` — funds, orders, ships, marriages, land, conflict, lodging.  
3. `person` / `ship` / `site` attribute tables.  
4. Monthly $\Sigma(t)$ for 1606–1624, with explicit NA.  
5. First runnable operators: $\pi_{D\to E}$; $\kappa$ on the London–Fort supply edge; $P_{\text{maids}}$ on the 1620–22 waves; $\varepsilon$ on the 1609 charter and the 1624 takeover; $\alpha$ by Ferrar as Deputy.

That is the stack: archive as bytecode, RDG as disassembler, Jamestown as the running process, maidens as the subsystem that tried to rewrite $\rho$ and $F$ in tobacco-priced matches.

The colony is not “a town with some investors.” It is:

charter → treasurer / deputy / courts → ships → fort and out-settlements → tobacco, land, households → shocks → Crown takeover (1624).

Four mathematical lenses all apply. RDG is the one that can hold the other three as specializations.

---

## 1. Four lenses

### 1.1 Relational / graph

- **Nodes:** people (investors, officers, colonists); entities (Virginia Company, Crown, tribes, ships, settlements).  
- **Edges:** contracts, orders, letters, financial flows, kinship, patronage, conflict.  
- **Tools:** degree, centrality, cut sets, communities; **temporal graphs** (edges stamped with date); **flow networks** (capital, supplies, information: capacities and losses).

This turns the papers into a dynamic corporate-colonial network.

### 1.2 Time series and event dynamics

- **Objects:** ship departures and arrivals, supply shipments, mortality, charters, legal changes.  
- **Tools:** $x(t)$ for population, cash, ships, prices; change-point detection (Starving Time, royal takeover); survival analysis / hazard for voyages, settlements, offices.

The archive is a stochastic process of a risky enterprise.

### 1.3 Decision / game theory

- **Players:** Company, Crown, colonists, Powhatan and other groups, rival Europeans.  
- **Tools:** games under uncertainty (site, military posture, trade terms); expected-value investment versus failure, mutiny, or attack; mechanism design (charters, laws, and company rules as incentive machines).

The papers are the move log of a multi-agent game.

### 1.4 RDG / typed operators (the integrating lens)

Typed objects + relations + operators (projection, aggregation, update). The Ferrar corpus becomes a relational dynamic geometry of an early corporate-colonial system. Graph, time series, and games drop out as views of the same typed state.

---

## 2. Archive → types

Document classes inject into the model:

| Paper class | Injects |
|---|---|
| Minutes / directives | policies $\Pi$, orders, offices |
| Correspondence | authored, reports, event claims |
| Maps / plans | sites $S$, intended settlement geometry |
| Financials | funds, cash, bride-tobacco, supply cost |
| Policy (labor, land, marriage) | constraints on work, headright, $\mathrm{may\_marry}$ |
| Voyage logs / manifests | ships $V$, women $W_i$, cargo |
| Crisis reports | shocks to population, meal, access-to-food |

Nicholas’s binding is itself an operator $N_{\text{Ferrar}}: D_{\text{raw}}\to D_{\text{bound}}$. Cite both the raw item and the bound narrative.

---

## 3. Universe of discourse

$$
\mathcal{U}=P\cup D\cup E\cup S\cup V\cup C\cup K\cup W\cup H\cup\Pi\cup\Gamma
$$

| Sort | Meaning | Instances |
|---|---|---|
| $P$ | persons / offices | John & Nicholas Ferrar, Sandys, Smythe, Yeardley, Rolfe, Gates, De La Warr, Smith, Percy, Pountis, Powhatan, James I |
| $D$ | documents | letters, court minutes, charters of 1606/1609/1612, accounts, instructions, Ferrar lists |
| $E$ | events | arrivals, mortality, siege, court votes, charter, 1622 attack, 1624 takeover |
| $S$ | sites | James Fort, Bermuda, Point Comfort, Orapax, Flowerdew, outlying plantations |
| $V$ | ships / cargo lots | *Susan Constant*, *Sea Venture*, Third Supply, *Jonathan*, *London Merchant*, *Marmaduke*, *Warwick*, *Tiger*; meal, arms, cattle |
| $C$ | bodies | Virginia Company of London, Plymouth Company (sibling), Somers Islands Co., Crown / Privy Council, House of Burgesses (from 1619) |
| $K$ | stocks | see §4 |
| $W\subset P$ | recruited women | 1620 wave ~90; 1621 Ferrar-listed cohort on *Marmaduke* / *Warwick* / *Tiger* (~56–57); names e.g. Ann Tanner, Alice Burges, Ann Jackson; Jane Dier recorded ~15–16 |
| $H\subset P$ | candidate husbands | “honest and industrious” freemen / tenants with means — not servants |
| $\Pi\subset D$ | policy docs | Sandys 3 Nov 1619 and follow-ons; Third Roll 21 Nov 1621; instructions to Pountis |
| $\Gamma\subset E$ | matching events | voyage, lodging, marriage, death, tobacco payment, captivity, relocation |

Each object has an interval $I(x)$ and attributes (role, quantity, location, commendation, age, status maid/widow).

Governance facts the types must respect: 1606 royal council of 13 plus a local seven-man council; 1609 charter shifts daily control to the treasurer (Smythe, then Sandys from 1619) and an elected council with royal veto; 1612 charter; 1619 Assembly in Virginia; 1624 Crown takes the wreckage. Share price in the 1609 subscription world: £12 10s. One shareholder, one vote — a governance fact that later fuels faction (Sandys/Ferrar vs Smythe).

---

## 4. State

$$
\Sigma(t)=\bigl(K(t),\,R_{\le t}\bigr)
$$

$$
\begin{align*}
K(t)=\bigl(&
N(t),\; N_W(t),\; N_H^{\mathrm{unm}}(t),\; F(t),\\
&M_{\mathrm{meal}}(t),\; £(t),\; T_{\mathrm{tob}}(t),\; T_{\mathrm{bride}}(t),\\
&\Phi(t),\; \rho(t),\; N_{\mathrm{ships}}(t)
\bigr)
\end{align*}
$$

- $N$: colonists present  
- $N_W$: unmarried company-sent women present  
- $N_H^{\mathrm{unm}}$: unmarried men with means  
- $F$: settler families (Sandys’s target)  
- $M_{\mathrm{meal}}$: meal-days  
- $£$: company cash / claims  
- $T_{\mathrm{tob}}$: tobacco stock / receivable  
- $T_{\mathrm{bride}}$: tobacco due on maidens matches  
- $\Phi$: access to food / trade with Powhatan (high before late 1609, ~0 in the siege)  
- $\rho$: retention / “less movable”  
- $N_{\mathrm{ships}}$: hulls in the pipeline  

Most of $K$ is observed only at letters, courts, and musters. The model must carry missingness.

Rough demographic anchors: Rolfe 1616 — 65 women and children in 351 people. The 1620 muster includes Africans already present (32 listed in March 1620: 15 male, 17 female) after the 1619 *White Lion* landing — a separate coerced-labor inflow, not the maidens program. Do not collapse those two streams.

---

## 5. Relations

### Corporate / political / spatial

$$
\begin{aligned}
\mathrm{authored} &\subseteq P\times D \\
\mathrm{addresses} &\subseteq D\times(P\cup C) \\
\mathrm{reports} &\subseteq D\times E \\
\mathrm{orders} &\subseteq P\times P\times E \\
\mathrm{funds} &\subseteq P\times C\times\mathbb{R}_{\ge 0} \\
\mathrm{ships} &\subseteq V\times S\times E \\
\mathrm{governs} &\subseteq P\times S\times I \\
\mathrm{holds\_office} &\subseteq P\times C\times I \\
\mathrm{conflicts} &\subseteq (P\cup C)\times(P\cup C)\times I \\
\mathrm{charters} &\subseteq \mathrm{Crown}\times C\times D \\
\mathrm{grants\_land} &\subseteq C\times P\times S \\
\mathrm{assigns\_labor} &\subseteq C\times P\times S \\
\mathrm{supplies} &\subseteq V\times S\times K \\
\mathrm{reports\_crisis} &\subseteq D\times E \\
\mathrm{takes\_over} &\subseteq \mathrm{Crown}\times C\times E_{1624}
\end{aligned}
$$

Example: Rolfe, 8 June 1617, to Sandys, Ferrar-endorsed — double authorship plus $\mathrm{reports}(d,e_{\text{colony-stable}})$.

### Maidens / household

$$
{proposes} &\subseteq P\times \Pi \\
{subscribes} &\subseteq P\times \Pi \times £ \\
{recruits} &\subseteq C\times W \times \Pi \\
{ships_{W}} &\subseteq V\times W \times E \\
{lodges} &\subseteq P\times W \times I \\
{may_{marry}} &\subseteq W\times H \times \Pi \\
{marries} &\subseteq W\times H \times E \\
{pays_{tobacco}} &\subseteq H \times C\times \mathbb{R_{\ge 0}} \\
{ties \to soil} &\subseteq H \times S\times I
$$

Encoded constraints from the minutes, not atmosphere:

- Wives were intended to stop men from taking a stake and returning to England (“dissolution” / “overthrow of the plantation”).  
- The Company pays transport if she marries a public farmer; otherwise the husband reimburses.  
- Free choice “according to the law of nature,” but **not servants** — only freemen / tenants with means.  
- Price: 120 lb best leaf, later 150 lb.  
- Death before match: load the cost onto surviving matches (“proportionable addition”).  
- Married men get priority for the next company servant.  
- Pountis (and households that already have wives) lodge arrivals until matched.  
- Vetting: “young, handsome, honestly educated,” with parent/friend commendations. One in six of a 1621 group claimed gentry status in later reconstruction.  
- Third Roll: no subscription under £8; already £800 when reported; Southampton £48, Sandys £40, Ferrars large.

This is a designed marriage market with a liquidity screen. Poor planters are priced out; that complaint is part of the mechanism, not an accident.

---

## 6. Operators

**Ingest / type.** Each Ferrar or Kingsbury item → sort + edges.

**Projection** $\pi_{D\to E}$, $\pi_{D\to\Pi}$, $\pi_{D \to W}$. Document → claimed events, constraint set, named women. Claim ≠ fact.

**Enactment** $\varepsilon(d,\Sigma)$. Updates state only if executed.

- 1609 charter: rewrite $\mathrm{holds\_office}$, $\mathrm{governs}$.  
- Gates, May 1610: Laws Divine, Moral and Martial → incentive / punishment structure.  
- Maidens $\Pi$: matching filter + tobacco receivable.  
- 1624 quo warranto: $\mathrm{takes\_over}$; Company ceases to govern; residual $K$ maps to the Crown.

**Aggregation** $\alpha_{I,R}$. Fold by interval and role (Deputy Ferrar; treasurer Sandys; wave 1620 vs 1621; subscriber to a roll).

**Flow / cut** $\kappa$. Min-cuts on meal, people, orders, and specie between London and James Fort (and later out-plantations). The Third Supply is the canonical cut.

**Policy operator** $P_{\text{maids}}$.

$$
P_{\text{maids}}:\Sigma(t)\to\Sigma(t+\Delta)
$$

1. Recruit / vet $W$ in England.  
2. Ship; on landing, lodge.  
3. Match under $\mathrm{may\_marry}$.  
4. On marriage: $N_W-1$, $N_H^{\mathrm{unm}}-1$, $F+1$, $T_{\text{bride}}+p$, $activate_{{ties} \to {soil}}$.  
5. Pre-match death: socialize the debt across the remaining cohort (portfolio rule).

**Hazard / survival.**

Voyages and offices: $h_{\text{voyage}}(t\mid\text{season},\text{cargo-class})$.

Population:

$$
N(t+\Delta)=N(t)-\mu\bigl(M_{\mathrm{meal}}(t),\Phi(t)\bigr)\Delta+A_{\text{arrivals}}(t).
$$

$\mu$ explodes when meal and $\Phi$ both collapse.

Retention (Sandys’s theory):

$$
h_{\text{exit}}(t)=h_0(t)\exp\bigl(-\lambda F(t)/N(t)\bigr).
$$

Estimate $\lambda$ only as far as the 1624/25 muster and return traffic allow; 1622 is a confounding shock.

**Reorganization** $N_{\text{Ferrar}}$. Archival binding.

**Counterfactual (maidens).** Delay the 1620 wave; drop servant-exclusion; set $p=0$; scale to the original 100 and stop. Compare $F(1624)$ and exits. Data are thin; the point is to make the minute’s claim testable.

---

## 7. Matching market (lens 1.3 specialized)

Gale–Shapley-style assignment with a designer $C$:

$$
\max_x \sum_{w,h}u(w,h)
\quad\text{s.t.}\quad
\sum_h x_{wh}\le 1,\;
\sum_w x_{wh}\le 1,\;
x_{wh}=0\text{ if }\neg\mathrm{may\_marry},\;
\text{tobacco}(h)\ge p.
$$

Company utility is not private romantic surplus:

$$
U_C=\alpha\Delta F+\beta\Delta\rho+\gamma T_{\mathrm{bride}}-\delta(\text{voyage cost}).
$$

Sandys weights $\Delta\rho$ first: fix people on the soil, force staples and “necessities of man’s life,” plant posterity. Tobacco is how Third Roll adventurers get paid back. Price $p$ screens class.

Individual states for $W\cup H$:

$$
\{\text{England},\;\text{in transit},\;\text{unmarried colony},\;\text{married},\;\text{widowed},\;\text{dead},\;\text{captive},\;\text{returned}\}.
$$

Ann Jackson: sent, taken 1622, held to 1630 — the marriage flow hits war. Keep the captive state.

Cohort flows: $I(t)$ women landed, $M(t)$ marriages. Waves: ~90 in May–June 1620 (*Jonathan*, *London Merchant*); 1621 *Marmaduke* (widow + 11 in one letter; 13 named in some lists), then *Warwick* / *Tiger*; on the order of 140+ company maids by 1622, plus ordinary wives in family parties. Sources disagree slightly on counts; store wave IDs and do not pretend a single integer.

---

## 8. Worked fragments

### 8.1 Third Supply / Starving Time (ops + shock)

June 1609: nine ships, ~600 people, a year’s stores. Hurricane. *Sea Venture* on Bermuda with leadership (Gates, Somers, Newport) and much of the supply. Remnant ships reach Jamestown in August 1609 with ~300 people and little food. Smith wounded October 1609; Percy in charge. November: Ratcliffe party killed at Orapax; siege; $\Phi\to 0$. Winter 1609–10: horses, dogs, cats, leather; some survival cannibalism (remains of “Jane”). By spring ~60 left in the fort from on the order of 300–500, depending on which headcount one starts from. 23–24 May 1610: *Deliverance* and *Patience* from Bermuda. Gates finds ruin; 7 June evacuation; De La Warr intercepts on the river and turns them back. Then martial law.

In the model: $\kappa$ severs meal flow; $\mu$ spikes; discrete reset when De La Warr’s stores arrive. The Company pamphlet defending the colony after the presumed loss of *Sea Venture* is a $\mathrm{reports}$ document, not a stock.

### 8.2 Maidens program (social lock-in + finance)

Problem the minutes name: men treat Virginia as a short sojourn, chase present profit, and neglect staples and even “necessities of man’s life.” Remedy: “one hundreth young maides” so that wives, children, and family make them less movable. Implemented at smaller scale, rolled as an investment, reimbursed in leaf, filtered by class, archived by the Ferrars who also subscribed.

This is mechanism design sitting on the same $\Sigma$ as the magazine and the headright.

### 8.3 Takeover

The 1622 war cuts $N$, $F$, and $W$. Faction, true-state pamphlets, shareholder activism 1623–24. The Crown dissolves the company. $\varepsilon$ of quo warranto is the last corporate operator.

---

## 9. How the four lenses sit on one machine

```
charters / courts     --proposes-->   Π (labor, land, maids, martial law)
subscribers           --funds-->      voyages, magazine, Third Roll
voyages               --supplies / ships_W-->   S, W, meal, people
Pountis / households  --lodges-->     temporary W
may_marry + price p   --matches-->    families F, tobacco T_bride
F                     --updates-->    ρ, staple labor, servant priority
κ (storm, siege, war) --cuts-->       meal, Φ, N, F
1624                  --takes_over--> Crown inherits residual K
```

- **Graph:** people and bodies as nodes; every predicate above is an edge type; the Ferrars are high-betweenness (deputy + archive + subscribers).  
- **Time series:** $K(t)$ on a monthly grid 1606–1624; change points at 1609–10, 1619 (Sandys, Assembly, maids proposed, Africans land), 1622, 1624.  
- **Game:** Company vs colonists’ exit option; Company vs Powhatan over $\Phi$; factions inside $C$; Crown as residual claimant; maidens as a mechanism to change colonists’ payoff from “sojourn” to “stay.”  
- **RDG:** the typed operators that compile the papers into those views.

What the corpus is *for*, in the company’s own logic:

1. Operations — labor, governance, trade, military posture.  
2. Shock response — starvation, mutiny, disease, missed ships.  
3. Finance — subscriptions, tobacco, land, investor pressure, rolls.  
4. Social lock-in — households as stabilizer; imported women as designed matching; family density as anti-exit device.  
5. Then firm death and royal inheritance.

---

