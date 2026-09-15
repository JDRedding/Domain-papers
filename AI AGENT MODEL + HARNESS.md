# AGENT MODEL + HARNESS

## type GptWrapper
```
  model        : single LLM
  output       : one answer
  product      : software / tool
  improvement  : only when the base model improves
  pricing      : seats, subscriptions
  knowledge    : lives in the prompt + model
```
## type AgentHarness
```
  model        : router across models (GPT, Claude, Gemma, Qwen, DeepSeek…)
  loop         : keep working step after step
  tools        : files, APIs, portals, code execution
  memory       : hour 3 still knows hour 1
  guardrails   : what it can touch + when to ask a human
  product      : finished work
  improvement  : every human correction becomes a rule
  pricing      : per claim / filing / review / closed month
  knowledge    : lives in the harness, not the model
```

- wrappers sold tools
- harnesses sell work

## AGENT HARNESS CATALOG
```
agent = model + harness
harness = loop + tools + memory + guardrails
```
### FUNDAMENTALS

```
  1. loop     — model does not stop after one reply
  2. hands    — read, write, call tools, run code
  3. memory   — persist state across a long job
  4. rules    — permissions + human handoff
```
```
  tools       files, shell, APIs, browser, MCP
  memory      persist state across hours / sessions
  guardrails  permissions, sandbox, human handoff
  config      CLAUDE.md / AGENTS.md / SKILL.md / hooks
  router      swap GPT, Claude, Gemini, Qwen, DeepSeek, local
```
### VENDOR PRODUCT HARNESSES

####  ClaudeCode
```
    maker     Anthropic
    surface   CLI + IDE + desktop + web
    model     Claude-locked (Fable / Opus / Sonnet)
    extras    subagents, hooks, skills, CLAUDE.md, Agent SDK
    shape     terminal-first category definer
```
####  Codex
```
    maker     OpenAI
    surface   CLI (OSS) + desktop + Agents API
    model     GPT-first, some OSS models
    extras    sandbox, AGENTS.md, cloud handoff, subagents
    shape     async issue-to-PR / managed Codex harness
```
####  Cursor
```
    maker     Anysphere
    surface   VS Code-fork IDE + CLI + cloud VMs
    model     multi (Claude / GPT / Gemini / Composer)
    extras    agent mode, hooks, skills, background agents
    shape     in-editor daily driver
```
####  Antigravity
```
    maker     Google
    surface   desktop + IDE + CLI (Gemini CLI successor)
    model     Gemini-first + some others
    extras    Agent Manager, artifacts, browser subagent
    shape     multi-agent mission control
```
####  Copilot
```
    maker     GitHub / Microsoft
    surface   IDE + CLI + cloud
    model     multi managed picker
    extras    agent modes, MCP, workspace agents
    shape     enterprise default if you already live on GitHub
```
####  DevinDesktop
```
    maker     Cognition (ex-Windsurf Cascade)
    surface   IDE + cloud sessions
    model     multi + SWE models
    extras    local agent + Devin cloud handoff
    shape     agent-first editor + background worker
```
### OPEN SOURCE CODING HARNESSES
```
  OpenCode     MIT / TS     provider-agnostic TUI, 75+ models, MCP
  Cline        Apache / TS  VS Code agent, BYOK, strong MCP
  Aider        Apache / Py  repo-map pair programmer, commit-per-turn
  OpenHands    MIT / Py     event-stream autonomous SWE agent
  Goose        Apache / Rust  Block, 70+ MCP extensions
  SWE-agent    MIT / Py     research ACI / SWE-bench harness
  Crush        Charm TUI    terminal-native coding agent
  QwenCode     Apache       Alibaba official OpenAI-compat CLI
  KimiCLI      MIT          Moonshot / OpenAI-compat CLI
  GrokCode     Apache       xAI terminal harness
  Pi           open         minimal 4-tool extensible core
  Amp          Sourcegraph  CLI multi-model agent
```
### BUILD-YOUR-OWN / FRAMEWORK HARNESSES

#### Eve
```
    maker     Vercel
    type      filesystem-first durable backend agent
    vars      agent.ts, instructions.md, tools/, skills/, subagents/, channels/, schedules/
    extras    durable execution, sandbox, HITL, evals, deploy as Vercel app
```
####  ClaudeAgentSDK
```
    maker     Anthropic
    type      same inner harness that powers Claude Code
```
####  OpenAIAgentsSDK / AgentsAPI
```
    maker     OpenAI
    type      agents, handoffs, guardrails, rented Codex loop
```
####  DeepAgents / LangChainHarness
```
    maker     LangChain
    type      library scaffolding to assemble your own loop
```
####  CursorSDK
```
    maker     Cursor
    type      TypeScript + Python SDK over Cursor agent
```
### OFFICIAL OPEN-MODEL HARNESSES

####  Qwen / DeepSeek / Kimi / GLM
```
    type      vendor CLIs + launchers tuned to their own weights
    note      knowledge can live in harness so models stay swappable
```
### PERSONAL / GENERAL HARNESSES
```
  OpenClaw, Hermes, Khoj, AgentZero, OpenHarness
    type      always-on agents in chat apps, not just repos
```
## SHARED FILES / VARIABLES
```
  CLAUDE.md      project memory for Claude Code
  AGENTS.md      project instructions across Codex / OpenCode / Copilot
  SKILL.md       reusable skill packs (superpowers and others)
  MCP            common tool bus almost every serious harness speaks
  hooks          deterministic lifecycle code around the model loop
```
## RULE
```
  wrappers sold tools
  harnesses sell finished work
  pick harness and model as a pair
  after 5 jobs != after 500 jobs
```
