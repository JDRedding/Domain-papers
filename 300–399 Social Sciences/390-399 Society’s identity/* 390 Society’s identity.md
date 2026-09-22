# Society’s identity
Customs, etiquette, and folklore

**Customs, etiquette, and folklore** help define a society’s identity. They shape how people greet one another, mark important occasions, and pass on what a community believes is worth remembering. Customs, etiquette, and folklore are related parts of culture. They reveal values, social rules, and inherited stories. Studying them supports empathy, more careful interaction, and a fuller view of communities around the world.

- 390	General Customs, etiquette & folklore
- 391	Society’s Costumes & personal appearance
- 392	Society’s Customs of life cycle & domestic life
- 393	Society’s Death customs & practices
- 394	General social customs
- 395	Society’s Etiquette & manners
- 397	Society’s Folklore & tales
- 398	Society’s Folklore & legends
- 399	Customs of other social groups

## Customs and Etiquette

**Customs** are shared practices upheld by a community—greetings, hospitality, public rituals, and similar habits.

**Etiquette** is the accepted code of manners that makes everyday contact more predictable and respectful.

In the United States, common expectations include personal space, punctuality, phrases such as “please” and “thank you,” and tipping in many service settings. Other familiar norms include holding doors, making light conversation, and treating private matters as private. House-party manners, dating customs, and workplace conduct also guide daily life.

Etiquette changes from place to place. In Japan, slurping noodles can signal enjoyment. In many Middle Eastern and African settings, the left hand is reserved for personal hygiene and is not used to offer objects to others. Knowing such differences reduces misunderstanding and makes cross-cultural contact more respectful.

## How Traditions Work and Change

Customs and folklore support identity, cohesion, and moral teaching. They preserve a sense of the past while handing on knowledge and manners. They also change. Globalization, migration, and new media produce mixed forms: online festival gatherings, multicultural weddings, and other blends of older ritual with present-day life. That flexibility can keep a tradition usable without erasing its history.

## Studying and Respecting Traditions

Useful approaches include:

- Observing and, when welcome, taking part in local festivals and rituals with care
- Listening to elders and other keepers of oral tradition
- Reading literature, reference works, and folklore collections
- Avoiding assumptions and treating unfamiliar practices with restraint

## Folklore and Cultural Narratives

**Folklore** includes traditional stories, myths, legends, and customary practices passed from one generation to the next. These forms carry beliefs, values, and social rules. They range from European fairy tales and legendary beings to Native American stories and Asian folk traditions.

Folk narratives often explain the natural world, teach a moral, describe a social practice, or simply entertain. They also help a group recognize itself.

Folklore includes rituals and festivals. Thanksgiving in the United States is associated with gratitude and harvest. Diwali in India marks the triumph of light over darkness through lamps, fireworks, and family gatherings. Such events combine symbol, food, music, and dance and can strengthen communal ties. Distinct practices—Madagascar’s Famadihana reburial ceremonies, or Spain’s El Colacho baby-jumping festival—show how widely societies differ in honoring life, death, and belief.

## Equations and formulas

Customs, etiquette, and folklore can be researched through closed-form theory, cultural-evolution and social-transmission models treat them as traits that spread, persist, or fade. The standard equations come from dual-inheritance theory (Cavalli-Sforza & Feldman; Boyd & Richerson) and from related population and epidemic models. These formulas do not describe any particular greeting, funeral, or fairy tale. They describe how such practices can be inherited, copied, stabilized by conformity, or washed out by competing variants. The parameters are estimated from ethnographic frequencies, surveys, or historical time series rather than derived from first principles.

### Notation used throughout

- $q$ or $p$: frequency (share of the population) holding a given custom, norm, or tale
- $1-q$: frequency holding the alternative
- $d_i$: strength of vertical (parent-to-child) transmission of trait $i$
- $f^i$: relative cultural fitness of trait $i$
- $\beta$: contact / imitation rate
- $\gamma$: rate at which people stop transmitting (become “stiflers” or lose interest)

### Logistic dynamics of a cultural trait
A two-trait custom or story whose frequency is $q_i$ often obeys

$$
\dot{q}_i = q_i(1-q_i)f^i.
$$

When transmission is mainly vertical, a common specialization is

$$
\dot{q}_i = q_i(1-q_i)(d_i-d_j).
$$

The term $q_i(1-q_i)$ is the usual logistic factor: change is fastest when the two variants are both common.

### Discrete-generation recursion (Boyd–Richerson style)
Let $p$ be the frequency of variant $c$ before transmission and $p'$ the frequency after transmission. A simple linear mixing of parental and social (oblique) influence is

$$
p' = A p + (1-A)P_t,
$$

where $A$ is the weight on parents and $P_t$ is the frequency among teachers / models. Under weak selection this becomes

$$
p' = p + p(1-p)\bigl[A w + (1-A)v\bigr],
$$

with $w$ and $v$ the relative advantages of the variant under parental versus social transmission.

### Frequency-dependent (conformist) bias
If people preferentially copy the majority, the probability of acquiring trait $c$ from $n$ models is a nonlinear function of the observed frequency. A typical first-order result is that the change in frequency is amplified when $p$ is already above $1/2$ and damped when it is below, which can stabilize a local custom even when it is not individually “better.”

### Epidemic / rumour model for the spread of a tale
Treat a legend or festival practice like an infection. Let $S$, $I$, and $R$ be the fractions who have never heard it, who actively tell it, and who no longer tell it:

$$
\begin{aligned}
\frac{dS}{dt} &= -\beta S I,\\
\frac{dI}{dt} &= \beta S I - \gamma I,\\
\frac{dR}{dt} &= \gamma I,
\end{aligned}
$$

with $S+I+R=1$. The same skeleton is used for folk-song and online-festival diffusion, sometimes with extra “network-pusher” or media terms.

### Bass-style adoption of a new custom
The share of people who have taken up a new etiquette rule or festival form, $z(t)$, can be written

$$
z(t+1)=z(t)+p\bigl(1-z(t)\bigr)+q z(t)\bigl(1-z(t)\bigr),
$$

where $p$ is the “innovation” (external) rate and $q$ is the “imitation” (social) rate. In continuous time this is a logistic curve whose speed is set by how strongly people copy one another.


