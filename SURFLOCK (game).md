# SURFLOCK (working title)
A retro-cyberpunk targeting sim disguised as a surfing game. You don’t ride the wave — you lock onto it.

You play as a nameless operator inside a glitchy, over-scanned interface. A towering blue wave fills the center of the screen while a lone surfer cuts across its face. Your job is to keep the red reticles locked on the rider as the wave builds, breaks, and collapses. Every successful lock feeds data into the surrounding HUD: wave amplitude, velocity, phase offset, and target ID.

The interface is the real environment. Miniature screens flicker at the edges — a pixel-city feed, a distant vessel, a radar sweep, system status, power levels, coordinates. Scanlines, yellow diagnostic panels, and red alert overlays constantly compete for space. The aesthetic is late-80s/early-90s military HUD colliding with analog surf footage that has been run through too many generations of digital reproduction.

```
[SYS:ONLINE] [CORE:87%] [NET:SECURE] [CLK:16:05]
 [RADAR]     [CITY.PX]    [SHIP.DAT]    [LOCK]     [PWR]
  .---.       .====.       .----.      .RED.      .===.
 | o o |     |####|       | >-> |     | TGT |    |SYS|
 |  *  |     |BLDG|       |SHIP |     | ON  |    |OK |
  '---'       '===='       '----'      'RED'      '==='

[COORD: 34.02N 118.49W]  [WIND: 12kts SW]  [TIDE: +1.4]
[AMMO: --] [SHIELD: 94%] [SIGNAL: STRONG] [PING: 12ms]

~~~~~~~~~~~~~~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~~~~~~~~~~~~~
~~~~~~~~~~                                   ~~~~~~~~~~
~~~~~~~~     /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\     ~~~~~~~~
~~~~~~      /                                 \      ~~~~~~
~~~~       /      (         O         )        \       ~~~~
~~~       /     (      \    |    /      )       \       ~~~
~~       /     (        \   |   /        )       \       ~~
~       |      (         \  |  /         )        |       ~
        |       \         \ | /         /         |
        |        \         \|/         /          |
        |         \         o         /           |
        |          \       /|\       /            |
        |           \       |       /             |
         \           \     / \     /             /
          \           \   /   \   /             /
           \           \ /     \ /             /
            \~~~~~~~~~~~V~~~~~~~V~~~~~~~~~~~~~/
             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```
## [WAVE_STATE]
```
 type        : towering_break
 height      : 14.8m
 speed       : 31.2 kts
 lock_status : ACQUIRED
 reticle_lvl : 3
 target_id   : SURFER_01
```
---
```
 STATUS: WAVE_LOCKED
 AMPLITUDE: 14.2
 FREQUENCY: 0.87Hz
 PHASE: +023
 TARGET_ID: SURFER_01
 VELOCITY: 28.4 kts
 LOCK_CIRCLES: 3
 HUD_LAYER: CYBERPUNK_RETRO
 MINI_SCREENS: CITY | VESSEL | RADAR
 RENDER_TYPE: PIXEL_COLLAGE
 COLOR_MAP: BLUE_WAVE + RED_RETICLE + YELLOW_PANEL
```
## [HUD_LAYERS]
```
 primary     : cyberpunk_retro
 overlay     : targeting_reticle
 mini_views  : radar | city | vessel
 color_map   : deep_blue + alert_red + panel_yellow
 render_mode : pixel_collage + scanlines
```
