# Medicine and health
- 610 Medicial/

**Medicine** is the science and practice of diagnosing, treating, and preventing disease. **Health** is a state of complete physical, mental, and social well-being—not merely the absence of disease. Medicine supplies the knowledge and means to protect and restore health. Health is the overall well-being that medicine seeks to achieve.

## Medicine

Medicine aims to maintain or restore human health through prevention, diagnosis, and treatment. It includes several related fields:

- **Clinical practice.** Care given by physicians, nurses, and other health professionals
- **Pharmacology and therapeutics.** Drugs and other interventions used to manage illness
- **Public health.** Prevention of disease and promotion of health in populations
- **Medical research.** Study of the causes of disease and the development of new treatments

Medicine draws on biology, chemistry, and the social sciences to address physical and mental problems. Its goal is to improve quality of life and longevity.

## Health

Health is a broader idea than freedom from sickness. The World Health Organization defines it as complete physical, mental, and social well-being: a person is not only free from disease or injury but can function in daily life and sustain positive emotional and social ties. Main aspects include:

- **Physical health.** Sound bodily function, strength, endurance, and immunity
- **Mental health.** Cognitive and emotional well-being, including the ability to cope with stress and to decide
- **Social health.** The capacity to form supportive relationships and take part in society
- **Preventive health.** Habits and measures—such as diet, exercise, and regular check-ups—that lower the risk of illness

## APENDIX: Equations and formulas

Equations and formulas most commonly used in medicine and health, grouped by domain, with notation defined next to each relation. These are the workhorse relations. More specialized models (multi-compartment PK/PD, Hodgkin–Huxley membrane currents, finite-element tissue mechanics, stochastic epidemic models) build on the same notation.

## Body size, nutrition, and metabolism

Body-mass index  

$$
\mathrm{BMI} = \frac{m}{h^{2}}
$$  

$m$ = mass (kg), $h$ = height (m).

Body-surface area (Mosteller)  

$$
\mathrm{BSA} = \sqrt{\frac{h_{\mathrm{cm}} \cdot m}{3600}}
$$  

$h_{\mathrm{cm}}$ = height (cm), $m$ = mass (kg). Du Bois form:  

$$
\mathrm{BSA} = 0.007184\, h_{\mathrm{cm}}^{0.725} m^{0.425}.
$$

Ideal body weight (Devine)  

$$
\mathrm{IBW}_{\text{male}} = 50 + 2.3\,(h_{\mathrm{in}}-60),\qquad
\mathrm{IBW}_{\text{female}} = 45.5 + 2.3\,(h_{\mathrm{in}}-60)
$$  

$h_{\mathrm{in}}$ = height (inches).

Basal metabolic rate (Mifflin–St Jeor)  

$$
\mathrm{BMR}_{\text{male}} = 10m + 6.25h_{\mathrm{cm}} - 5A + 5
$$  

$$
\mathrm{BMR}_{\text{female}} = 10m + 6.25h_{\mathrm{cm}} - 5A - 161
$$  

$A$ = age (years). Harris–Benedict is the older pair of similar linear forms.

## Cardiovascular physiology

Cardiac output  

$$
\mathrm{CO} = \mathrm{HR} \times \mathrm{SV}
$$  

$\mathrm{HR}$ = heart rate, $\mathrm{SV}$ = stroke volume. Also 

$$
\mathrm{CO} = \frac{\mathrm{VO}_{2}}{C_{\mathrm{aO}_{2}}-C_{\mathrm{vO}_{2}}}
$$  

(Fick principle); 

$\mathrm{VO}_{2}$ = oxygen consumption

Standard notation for the two oxygen contents in the Fick equation is

$$
C_{\mathrm{aO}_2}
$$

— arterial oxygen content

$$
C_{\bar{\mathrm{v}}\mathrm{O}_2}
$$

— mixed-venous oxygen content (bar over $\mathrm{v}$ marks mixed venous blood)

The Fick relation is then

$$
\mathrm{CO}=\frac{\dot{V}_{\mathrm{O}_2}}{C_{\mathrm{aO}_2}-C_{\bar{\mathrm{v}}\mathrm{O}_2}}
$$

Each content itself is

$$
C_{\mathrm{O}_2}=1.34\,\mathrm{Hb}\,S_{\mathrm{O}_2}+0.0031\,P_{\mathrm{O}_2}
$$

so

$$
C_{\mathrm{aO}_2}=1.34\,\mathrm{Hb}\,S_{\mathrm{aO}_2}+0.0031\,P_{\mathrm{aO}_2}
$$

$$
C_{\bar{\mathrm{v}}\mathrm{O}_2}=1.34\,\mathrm{Hb}\,S_{\bar{\mathrm{v}}\mathrm{O}_2}+0.0031\,P_{\bar{\mathrm{v}}\mathrm{O}_2}
$$

Units in the usual clinical form: $\mathrm{Hb}$ in g/dL, saturations as fractions (or percent/100), partial pressures in mmHg, contents in mL O₂/dL blood. The constant $1.34$ (sometimes $1.36$ or $1.39$) is Hüfner’s number; $0.0031$ is the solubility coefficient of O₂ in plasma.

Mean arterial pressure  

$$
\mathrm{MAP} \approx \mathrm{DBP} + \tfrac13(\mathrm{SBP}-\mathrm{DBP})
$$  

or, equivalently,  

$$
\mathrm{MAP} = \mathrm{CO} \times \mathrm{SVR}
$$  

($\mathrm{SVR}$ = systemic vascular resistance).

Poiseuille flow (steady laminar flow in a vessel)  

$$
Q = \frac{\pi r^{4} \Delta P}{8\eta L}
$$  

$Q$ = flow, $r$ = radius, $\Delta P$ = pressure drop, $\eta$ = viscosity, $L$ = length.

Reynolds number (onset of turbulence)  

$$
\mathrm{Re} = \frac{\rho v D}{\eta}
$$  

$\rho$ = density, $v$ = velocity, $D$ = diameter.

## Renal function

Cockcroft–Gault creatinine clearance  

$$
\mathrm{CrCl} = \frac{(140-A)\,m}{72\,\mathrm{SCr}} \times (0.85\text{ if female})
$$  

$\mathrm{SCr}$ = serum creatinine (mg/dL).

CKD-EPI (simplified adult form; exact published coefficients vary by sex and race category in older versions)  

$$
\mathrm{eGFR} = 141 \times \min(\mathrm{SCr}/\kappa,1)^{\alpha} \times \max(\mathrm{SCr}/\kappa,1)^{-1.209} \times 0.993^{A} \times \text{sex factor}
$$  

$\kappa=0.7$ (female) or $0.9$ (male); $\alpha=-0.329$ (female) or $-0.411$ (male).

Filtration fraction  

$$
\mathrm{FF} = \frac{\mathrm{GFR}}{\mathrm{RPF}}
$$  

$\mathrm{RPF}$ = renal plasma flow.

## Acid–base and gases

Henderson–Hasselbalch (bicarbonate buffer)  

$$
\mathrm{pH} = \mathrm{p}K_{\mathrm{a}} + \log_{10}\frac{[\mathrm{HCO}_{3}^{-}]}{[\mathrm{H}_{2}\mathrm{CO}_{3}]} \approx 6.1 + \log_{10}\frac{[\mathrm{HCO}_{3}^{-}]} {0.03\,P_{\mathrm{CO}_{2}}}
$$  

Henderson–Hasselbalch for the bicarbonate–carbonic acid buffer:

$$
\mathrm{pH}=6.1+\log_{10}\frac{[\mathrm{HCO}{3}^{-}]}{0.0301\,P{\mathrm{CO}_{2}}}
$$

$[\mathrm{HCO}_{3}^{-}]$ — plasma bicarbonate concentration in mmol/L (numerically the same as mEq/L)

$P_{\mathrm{CO}_{2}}$ — partial pressure of carbon dioxide in mmHg

$0.0301$ — solubility coefficient of $\mathrm{CO}_{2}$ in plasma (mmol·L⁻¹·mmHg⁻¹) at $37^{\circ}\mathrm{C}$

The same relation in fully expanded form is

$$
\mathrm{pH}=\mathrm{p}K_{\mathrm{a}}+\log_{10}\frac{[\mathrm{HCO}{3}^{-}]}{[\mathrm{H}{2}\mathrm{CO}_{3}]}
$$

with

$$
[\mathrm{H}{2}\mathrm{CO}{3}]=0.0301\,P_{\mathrm{CO}{2}},\qquad \mathrm{p}K{\mathrm{a}}\approx 6.1
$$

at body temperature. If $P_{\mathrm{CO}_{2}}$ is instead in kPa, replace $0.0301$ by $0.226$.

Alveolar gas equation  

$$
P_{\mathrm{AO}_{2}} = F_{\mathrm{IO}_{2}}(P_{\mathrm{atm}}-P_{\mathrm{H}_{2}\mathrm{O}}) - \frac{P_{\mathrm{aCO}_{2}}}{R}
$$  

$R$ = respiratory exchange ratio (typically $\approx 0.8$).

Oxygen content of whole blood:

$$
C_{\mathrm{O}_{2}} = 1.34\,\mathrm{Hb}\,S_{\mathrm{O}_{2}} + 0.0031\,P_{\mathrm{O}_{2}}
$$

- $\mathrm{Hb}$ — hemoglobin concentration in g/dL  
- $S_{\mathrm{O}_{2}}$ — hemoglobin oxygen saturation as a fraction (e.g. $0.97$, not $97\%$)  
- $P_{\mathrm{O}_{2}}$ — partial pressure of oxygen in mmHg  
- $C_{\mathrm{O}_{2}}$ — oxygen content in mL O₂ per dL blood  

$1.34$ is Hüfner’s constant (mL O₂ bound per g Hb when fully saturated; $1.36$ or $1.39$ are also used). $0.0031$ is the plasma solubility of O₂ (mL·dL⁻¹·mmHg⁻¹). Some texts write $0.003$.

Arterial and mixed-venous forms:

$$
C_{\mathrm{aO}_{2}} = 1.34\,\mathrm{Hb}\,S_{\mathrm{aO}_{2}} + 0.0031\,P_{\mathrm{aO}_{2}}
$$

$$
C_{\bar{\mathrm{v}}\mathrm{O}_{2}} = 1.34\,\mathrm{Hb}\,S_{\bar{\mathrm{v}}\mathrm{O}_{2}} + 0.0031\,P_{\bar{\mathrm{v}}\mathrm{O}_{2}}
$$

If saturation is entered as a percent, divide it by $100$, or write $1.34\,\mathrm{Hb}\,(S_{\mathrm{O}_{2}}/100)$.



Nernst potential (equilibrium potential of ion $X$)  

$$
E_{X} = \frac{RT}{zF}\ln\frac{[X]_{\mathrm{o}}}{[X]_{\mathrm{i}}} \approx \frac{61}{z}\log_{10}\frac{[X]_{\mathrm{o}}}{[X]_{\mathrm{i}}}\quad(37^{\circ}\mathrm{C})
$$  

Goldman–Hodgkin–Katz voltage equation extends this to multiple ions with permeability weights $P_{X}$.

## Pharmacokinetics

One-compartment IV bolus  

$$
C(t) = C_{0}\,e^{-kt},\qquad t_{1/2}=\frac{\ln 2}{k},\qquad V_{\mathrm{d}}=\frac{\mathrm{Dose}}{C_{0}},\qquad \mathrm{CL}=k\,V_{\mathrm{d}}
$$  

$C$ = concentration, $k$ = elimination rate constant, $V_{\mathrm{d}}$ = volume of distribution, $\mathrm{CL}$ = clearance.

Steady-state infusion  

$$
C_{\mathrm{ss}} = \frac{R_{0}}{\mathrm{CL}}
$$  

$R_{0}$ = infusion rate.

Bioavailability  

$$
F = \frac{\mathrm{AUC}_{\mathrm{extravascular}}/\mathrm{Dose}_{\mathrm{extravascular}}}{\mathrm{AUC}_{\mathrm{IV}}/\mathrm{Dose}_{\mathrm{IV}}}
$$

Michaelis–Menten elimination  

$$
v = \frac{V_{\max}C}{K_{\mathrm{m}}+C}
$$  

saturable (nonlinear) clearance when $C$ is not $\ll K_{\mathrm{m}}$.

Hill / sigmoid $E_{\max}$ dose–response  

$$
E = E_{0} + \frac{E_{\max}C^{n}}{\mathrm{EC}_{50}^{n}+C^{n}}
$$  

$n$ = Hill coefficient.

## Epidemiology and diagnostic tests

Incidence rate  

$$
\mathrm{IR} = \frac{\text{new cases}}{\text{person-time at risk}}
$$

Prevalence  

$$
P = \frac{\text{existing cases}}{\text{population}}
$$

Risk ratio and odds ratio  

$$
\mathrm{RR} = \frac{a/(a+b)}{c/(c+d)},\qquad
\mathrm{OR} = \frac{ad}{bc}
$$  

in the usual $2\times 2$ table.

SIR compartmental model  

$$
\frac{\mathrm{d}S}{\mathrm{d}t}=-\beta SI,\qquad
\frac{\mathrm{d}I}{\mathrm{d}t}=\beta SI-\gamma I,\qquad
\frac{\mathrm{d}R}{\mathrm{d}t}=\gamma I
$$  

$\beta$ = transmission rate, $\gamma$ = recovery rate; basic reproduction number $R_{0}=\beta/\gamma$ (for this simple form).

Sensitivity, specificity, predictive values  

$$
\mathrm{Se}=\frac{\mathrm{TP}}{\mathrm{TP}+\mathrm{FN}},\qquad
\mathrm{Sp}=\frac{\mathrm{TN}}{\mathrm{TN}+\mathrm{FP}}
$$  

$$
\mathrm{PPV}=\frac{\mathrm{TP}}{\mathrm{TP}+\mathrm{FP}},\qquad
\mathrm{NPV}=\frac{\mathrm{TN}}{\mathrm{TN}+\mathrm{FN}}
$$  

Likelihood ratios: $\mathrm{LR}^{+}=\mathrm{Se}/(1-\mathrm{Sp})$, $\mathrm{LR}^{-}=(1-\mathrm{Se})/\mathrm{Sp}$.

Bayes update of disease probability  

$$
\mathrm{odds}_{\mathrm{post}} = \mathrm{odds}_{\mathrm{prior}}\times\mathrm{LR}
$$

## Survival and growth

Exponential decay / half-life (again)  

$$
N(t)=N_{0}e^{-\lambda t},\qquad t_{1/2}=\frac{\ln 2}{\lambda}
$$

Logistic growth (tumor, population, epidemic saturation)  

$$
\frac{\mathrm{d}N}{\mathrm{d}t}=rN\Bigl(1-\frac{N}{K}\Bigr)
$$  

$r$ = intrinsic rate, $K$ = carrying capacity.

Kaplan–Meier estimator  

$$
\hat{S}(t)=\prod_{t_{i}\le t}\Bigl(1-\frac{d_{i}}{n_{i}}\Bigr)
$$  

$d_{i}$ = events at time $t_{i}$, $n_{i}$ = number still at risk.


