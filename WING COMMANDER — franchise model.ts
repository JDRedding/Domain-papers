// WING COMMANDER — franchise model
// https://www.wcnews.com/

enum Medium {
  GAME,
  EXPANSION,
  SPINOFF,
  PORT,
  NOVEL,
  ANIMATED_SERIES,
  FILM,
  CARD_GAME,
  FAN_PROJECT
}

enum Role {
  MAINLINE,
  ADDON,
  MULTIPLAYER,
  SANDBOX,
  TOOL,
  ADAPTATION
}

type Year = int
type Title = string
type Studio = string

struct Work {
  title: Title
  year: Year
  medium: Medium
  role: Role
  notes: string
}

struct Character {
  name: string
  callsign: string
  actor: string   // empty if not live-action
}

struct Faction {
  name: string
  kind: string
}

// fundamentals
const CREATOR: string = "Chris Roberts"
const ORIGIN_STUDIO: Studio = "Origin Systems"
const PUBLISHER: Studio = "Electronic Arts"
const SETTING_CENTURY: int = 27
const PLAYER_ARCHETYPE: string = "Confederation fighter pilot launching from a carrier"
const PITCH: string = "World War II in space"
const CORE_LOOP: string = "briefing -> sortie -> dogfight -> debrief / story branch"
const INNOVATION_1990: string = "cinematic campaign + branching war front + named wingmen"
const INNOVATION_WC3: string = "interactive full-motion video with Hollywood cast"
const INNOVATION_PROPHECY: string = "3D-accelerator spaceflight + shorter cutscenes"
const INNOVATION_SECRET_OPS: string = "episodic internet mission drops"

// factions
factions: Faction[] = [
  { name: "Terran Confederation", kind: "human military polity" },
  { name: "Kilrathi",             kind: "feline warrior empire" },
  { name: "Nephilim",             kind: "insectoid extra-galactic threat" }
]

// key people on screen
blair: Character = {
  name: "Christopher Blair",
  callsign: "Maverick",
  actor: "Mark Hamill"
}

tolwyn: Character = {
  name: "Geoffrey Tolwyn",
  callsign: "",
  actor: "Malcolm McDowell"
}

maniac: Character = {
  name: "Todd Marshall",
  callsign: "Maniac",
  actor: "Tom Wilson"
}

paladin: Character = {
  name: "James Taggart",
  callsign: "Paladin",
  actor: "John Rhys-Davies"
}

casey: Character = {
  name: "Lance Casey",
  callsign: "",
  actor: ""   // player avatar in Prophecy / Secret Ops
}

// canon spine
works: Work[] = [
  { title: "Wing Commander",                      year: 1990, medium: GAME,      role: MAINLINE,     notes: "Tiger's Claw; unnamed rookie later canonized as Blair" },
  { title: "The Secret Missions",                 year: 1990, medium: EXPANSION, role: ADDON,        notes: "assumes a winning WC1 path" },
  { title: "The Secret Missions 2: Crusade",      year: 1991, medium: EXPANSION, role: ADDON,        notes: "Firekka / religious crusade thread" },
  { title: "Wing Commander II: Vengeance of the Kilrathi", year: 1991, medium: GAME, role: MAINLINE, notes: "Tiger's Claw destroyed; speech; betrayal" },
  { title: "Special Operations 1",                year: 1991, medium: EXPANSION, role: ADDON,        notes: "WC2 campaign extension" },
  { title: "Special Operations 2",                year: 1992, medium: EXPANSION, role: ADDON,        notes: "WC2 campaign extension" },
  { title: "Wing Commander Academy",              year: 1993, medium: GAME,      role: TOOL,         notes: "mission builder" },
  { title: "Wing Commander: Privateer",           year: 1993, medium: GAME,      role: SANDBOX,      notes: "Gemini Sector mercenary; freeform loadouts" },
  { title: "Privateer: Righteous Fire",           year: 1994, medium: EXPANSION, role: ADDON,        notes: "Privateer story continuation" },
  { title: "Wing Commander: Armada",              year: 1994, medium: GAME,      role: MULTIPLAYER,  notes: "modem / LAN dogfight + strategy layer" },
  { title: "Wing Commander III: Heart of the Tiger", year: 1994, medium: GAME,  role: MAINLINE,     notes: "TCS Victory; FMV; Kilrah endgame" },
  { title: "Super Wing Commander",                year: 1994, medium: PORT,      role: ADAPTATION,   notes: "enhanced 3DO / Mac remake of WC1" },
  { title: "Wing Commander IV: The Price of Freedom", year: 1996, medium: GAME, role: MAINLINE,     notes: "post-war civil conflict; peak FMV budget" },
  { title: "Privateer 2: The Darkening",          year: 1996, medium: GAME,      role: SANDBOX,      notes: "same setting family; new cast / region" },
  { title: "Wing Commander: Prophecy",            year: 1997, medium: GAME,      role: MAINLINE,     notes: "TCS Midway; Nephilim; Casey flies, Blair returns" },
  { title: "Wing Commander: Secret Ops",          year: 1998, medium: EXPANSION, role: ADDON,        notes: "free episodic net release on TCS Cerberus" },
  { title: "Wing Commander (film)",               year: 1999, medium: FILM,      role: ADAPTATION,   notes: "Roberts-directed; set just before WC1" },
  { title: "Wing Commander Academy (TV)",         year: 1996, medium: ANIMATED_SERIES, role: ADAPTATION, notes: "13 episodes; USA Network" },
  { title: "Wing Commander novels (Baen / HarperCollins)", year: 1990s, medium: NOVEL, role: ADAPTATION, notes: "bridge games, movie, and side wars" },
  { title: "Wing Commander CCG",                  year: 1990s, medium: CARD_GAME, role: ADAPTATION,  notes: "post-WC3 collectible card game" },
  { title: "Wing Commander Prophecy (GBA)",       year: 2003, medium: PORT,      role: PORT,         notes: "handheld 3D conversion" },
  { title: "EA Replay (WC1 + Secret Missions)",   year: 2006, medium: PORT,      role: PORT,         notes: "PSP compilation" },
  { title: "Wing Commander Arena",                year: 2007, medium: GAME,      role: MULTIPLAYER,  notes: "Xbox Live Arcade; 16-player dogfights" },
  { title: "Wing Commander Saga: The Darkest Dawn", year: 2012, medium: FAN_PROJECT, role: MAINLINE, notes: "fan campaign on FreeSpace 2 engine" }
]

// series shape
const ORIGINAL_TRILOGY: Title[] = [
  "Wing Commander",
  "Wing Commander II: Vengeance of the Kilrathi",
  "Wing Commander III: Heart of the Tiger"
]

const FMV_PEAK: Title[] = [
  "Wing Commander III: Heart of the Tiger",
  "Wing Commander IV: The Price of Freedom"
]

const POST_KILRATHI: Title[] = [
  "Wing Commander: Prophecy",
  "Wing Commander: Secret Ops"
]

// current official status
ip_holder: Studio = "Electronic Arts"
official_mainline_after_arena: bool = false
roberts_spiritual_successor: string = "Squadron 42 (Star Citizen campaign)"
successor_window: string = "targeted 2027"

// play-order default
recommended_first_pass: Title[] = [
  "Wing Commander + Secret Missions",
  "Wing Commander II + Special Operations",
  "Wing Commander III: Heart of the Tiger",
  "Wing Commander IV: The Price of Freedom",
  "Wing Commander: Prophecy + Secret Ops",
  "Wing Commander: Privateer + Righteous Fire"
]
