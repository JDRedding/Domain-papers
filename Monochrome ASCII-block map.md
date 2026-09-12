Create a monochrome ASCII-block map of [PLACE]. Output only the map and supporting text. No outer frame, no box-drawing borders around the whole piece, no markdown fences. Use a monospaced layout so it stays copyable and shareable as plain text.

## GOAL
Turn [PLACE] into a tile map where each character is one generalized cell. Prioritize recognizable outline, major terrain or theme provinces, and a few named features over survey precision.

## USER VARIABLES (fill these before generating)
- PLACE: 
- MAP TYPE: physical / elevation / landcover / climate / population / custom
- THEME FIELD: the value being encoded (default: elevation in feet or meters)
- CELL SIZE: what one glyph represents (area, distance, or time)
- GRID SIZE: target width [W] characters, height [H] lines
- NORTH: up unless specified
- PROJECTION NOTE: equal-area / conformal / schematic
- FEATURES TO LABEL: 
- WATER BODIES: 
- HIGH POINTS / LOW POINTS: 
- DATA CONCEPT: public DEM / landcover / census / invented

## GLYPH SET
Use only these unless the theme needs a custom legend:

```
- ~   water
- .   empty / no data / ocean if the place is inland-focused
- ░   lowest / sparsest / coolest / class 1
- ▒   low-mid / class 2
- ▓   mid / class 3
- █   high / dense / class 4
- ■   highest / peak / class 5
```

If the map is not elevation, remap the five classes to the theme (example: population density, forest cover, rainfall). Keep the same five glyphs so the visual language stays consistent.

## FUNDAMENTALS
- Draw the outline first from memory of the place’s silhouette.
- Fill by province or gradient, not by tracing every border wiggle.
- Put short labels in adjacent blank space, not over the glyphs if that breaks the shape.
- Leave a right or bottom margin for title, legend, scale, and notes.
- Width usually 48–72 characters; height 28–48 lines unless the place is extremely elongated.

## REQUIRED TEXT BLOCKS
Title:
[MAP TYPE] OF [PLACE]
ASCII BLOCK / TILE STYLE

```
Legend:
~ water
░ [class 1 range or meaning]
▒ [class 2]
▓ [class 3]
█ [class 4]
■ [class 5]
* capital or primary city if shown
```

Scale:
- 1 glyph ≈ [CELL SIZE]

Notes:
- Projection: [schematic / named]
- Data concept: [source or invented]
- Style: tile analog of a hypsometric / thematic block map

RULES
- No color, no HTML, no emoji except the glyphs above.
- No decorative border.
- If exact data is unknown, generalize honestly from well-known geography of [PLACE].
- If the place is fictional, invent internally consistent provinces and say so in Notes.
- Prefer three to six readable regions over noisy local detail.
