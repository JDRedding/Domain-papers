# Vibe Coder vs Software Engineer
```
VIBE CODER                              SOFTWARE ENGINEER

Looks good. It works. Ship it!            Plan. Design. Structure. Scale.

      Yay! It works!                           [focused]

        ( ^_^ )/                                 ( o-o )

       | laptop |                               | laptop |

Prompt / Copy-Paste / Vibe                Architecture / Docs / Testing / Deployment
mug: BUILD FAST                           mug: CLEAN • SCALE • MAINTAIN
```
---

## UNDER THE HOOD
```
Vibe Coder                                 Software Engineer

COPY PASTE     QUICK FIX     TRY THIS      Frontend ——— Backend  
BROKEN?        ADD LATER     TEMP          Database ——— APIs  
IDK BUT IT WORKS                           Services ——— Monitoring  

spaghetti wires, spilled mug               labeled racks, tidy cables
```

```ts
// vibe_coder.ts vs software_engineer.ts

type VibeCoder = {
  strategy: "looks-good" | "it-works" | "ship-it";
  mood: "Yay! It works!";
  face: "( ^_^ )/";
  tool: "laptop";
  workflow: ["prompt", "copy-paste", "vibe"];
  mug: "BUILD FAST";
};

type SoftwareEngineer = {
  strategy: "plan" | "design" | "structure" | "scale";
  mood: "focused";
  face: "( o-o )";
  tool: "laptop";
  workflow: ["architecture", "docs", "testing", "deployment"];
  mug: "CLEAN • SCALE • MAINTAIN";
};

const vibe: VibeCoder = {
  strategy: "ship-it",
  mood: "Yay! It works!",
  face: "( ^_^ )/",
  tool: "laptop",
  workflow: ["prompt", "copy-paste", "vibe"],
  mug: "BUILD FAST",
};

const engineer: SoftwareEngineer = {
  strategy: "scale",
  mood: "focused",
  face: "( o-o )",
  tool: "laptop",
  workflow: ["architecture", "docs", "testing", "deployment"],
  mug: "CLEAN • SCALE • MAINTAIN",
};

// under the hood

type VibeInternals = {
  method: "COPY PASTE" | "QUICK FIX" | "TRY THIS";
  whenBroken: "ADD LATER" | "TEMP";
  confidence: "IDK BUT IT WORKS";
  wiring: "spaghetti";
  desk: "spilled mug";
};

type EngineerInternals = {
  layers: {
    frontend: "Backend";
    database: "APIs";
    services: "Monitoring";
  };
  wiring: "labeled racks";
  desk: "tidy cables";
};

const vibeUnderTheHood: VibeInternals = {
  method: "COPY PASTE",
  whenBroken: "ADD LATER",
  confidence: "IDK BUT IT WORKS",
  wiring: "spaghetti",
  desk: "spilled mug",
};

const engineerUnderTheHood: EngineerInternals = {
  layers: {
    frontend: "Backend",
    database: "APIs",
    services: "Monitoring",
  },
  wiring: "labeled racks",
  desk: "tidy cables",
};

// fundamentals

enum Mode {
  Spike = "vibe",
  Production = "engineer",
}

function chooseMode(lifespanMonths: number, usersYouDontKnow: boolean): Mode {
  if (lifespanMonths < 3 && !usersYouDontKnow) return Mode.Spike;
  return Mode.Production;
}

// rule
// vibe the spike
// then delete half
// put the rest behind an interface, a test, and a deploy
```
