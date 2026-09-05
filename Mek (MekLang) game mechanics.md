# Mek

Mek is a specialized language and prototyping tool designed to define and experiment with game mechanics in 2D tile-based, turn-based, deterministic games, using visual rules as its main programming structure.

*Mek* is a research prototype language and tool—**MekLang**—designed specifically for expressing **game mechanics** (state‑transition rules) in **2D, turn‑based, tile‑based, deterministic, complete‑information games**. It aims to give designers a Photoshop‑like environment for mechanics, letting them prototype interactions without writing full general‑purpose code. The authors frame Mek as a step toward giving designers a dedicated mechanics‑editing environment—analogous to how Photoshop empowers visual artists. The goal is to make mechanics iteration fast, expressive, and accessible. 

The authors demonstrate that Mek can succinctly implement a range of well‑known mechanics, including movement rules like the **bishop** or **knight** in chess, which serve as canonical examples of “mechanics as state‑transition definitions.”

---

### What Mek actually is  

Mek addresses the lack of dedicated tools for game mechanics prototyping, separating the mechanics of a game from complete game development. A mechanic is defined as a state transition, describing how game elements interact and change over time. Unlike traditional game development environments, Mek focuses on mechanics rather than playable games, allowing designers to test, analyze, and iterate on core interactions without creating a full game.

In essence, Mek acts as a mechanics laboratory, providing a minimalist, visually structured environment to formalize, analyze, and iterate on game mechanics for 2D deterministic scenarios without the overhead of full game development. This makes it particularly valuable for researchers, game design students, and prototypers exploring complex interactions in turn-based tile games.

Mek’s niche is **mechanics‑first prototyping**, not full game authoring.  Mek consists of two parts:

- **MekLang** — a domain‑specific language that describes *mechanics*, not whole games. A mechanic is defined as a **state transition rule**: how the game state changes when a move is taken.  
- **Mek Tool** — an interfacing environment that executes MekLang mechanics and allows rapid iteration.

### Applications and Limitations
- Applications: Mek is ideal for experimental prototyping, educational purposes, and research in game design, allowing rapid testing of well-known mechanics (e.g., movement rules, interactions, and constraints) in controlled 2D environments.
- Limitations: It is not intended for producing complete, playable games. Designers cannot leverage Mek for level-building or sprite animation libraries directly, and the abstraction over sprite movement may limit certain mechanics outside its deterministic, tile-based scope.

The authors explicitly distinguish:

- **Mechanics** → rules for how the game state evolves  
- **Games** → sets of mechanics + an end condition (no moves available)

### Design Philosophy and Language Features
Domain-specific restrictions: Mek is limited to two-dimensional (2D), turn-based, tile-based, deterministic, and complete-information games. This constraint simplifies the prototyping process and ensures uniformity across mechanics.

- Visual rule-based programming: Instead of moving sprites through coordinates, Mek operates by modifying the background color of tiles to represent game states and actions
- Rules follow a "When-Do" paradigm, where the "When" clause specifies a local tile pattern (e.g., neighboring tiles or conditions), and the "Do" clause executes state changes on the center or adjacent tiles 
- No abstract sprites: Mek does not utilize directional sprite movement. All game logic is abstracted into the tile map manipulation, making it distinct from engines like VGDL that require specifying sprite classes and motion primitives
- Rapid iteration: Mek enables designers to test mechanics individually, analyze their interactions, and explore new mechanics before integrating them into complete games

---

### Why Mek exists  
The paper argues that existing tools (e.g., GVGAI) focus on *game generation* or *AI benchmarking*, not on giving designers a flexible way to express new interactions. General‑purpose languages are still the most flexible—but require programming skill and slow iteration. Mek tries to fill that gap by:

- Abstracting away tedious implementation details  
- Enforcing a uniform structure (2D, turn‑based, tile‑based, deterministic)  
- Allowing designers to prototype mechanics quickly and succinctly

### Comparison with Other Tools
Mek is conceptually similar to Joris Dormans’ Machinations in emphasizing mechanic development, though Machinations focuses on high-level resource flows, often abstracting the board or level entirely. In contrast, Mek explicitly integrates tile-based spatial patterns, offering more precise control of interactions and testing in the 2D game space. Unlike automated systems such as Ludi or fully procedural platforms like ANGELINA, Mek is oriented toward manual design and experimentation of mechanics, not full game creation or evaluation by AI.

The paper positions Mek against:

- **GVGAI** — flexible for describing whole games but too rigid for inventing new interactions  
- **General programming languages** — flexible but slow and require expertise  
- **Other DSLs** — often aimed at full game specification rather than mechanics prototyping

---

### Future work 

- MekLang syntax  
- Mechanics vs games distinction  
- Comparison with GVGAI  
- Examples of mechanics implemented in Mek

## Further reading 
- Mek: Mechanics Prototyping Tool for 2D Tile-Based Turn-Based Deterministic Games https://arxiv.org/abs/1904.03540
