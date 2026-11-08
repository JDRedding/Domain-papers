# YouTube Shorts to Standard Video Conversion

## Abstract

YouTube Shorts are presented through a specialized interface optimized for short-form, vertically scrolling content. While effective for rapid content consumption, many users prefer the traditional YouTube video interface, which provides a richer set of controls, easier navigation, conventional browser behavior, and improved integration with playlists, timestamps, and viewing history.

This paper documents a simple URL transformation that converts a YouTube Shorts URL into the equivalent standard YouTube watch URL. Several implementations are provided, including bookmarklet and userscript forms.

---

# 1. Introduction

A standard YouTube video and a YouTube Short reference the same underlying video asset. The distinction is primarily a matter of presentation and interface.

Consider the two URL forms:

```text
https://www.youtube.com/shorts/VIDEO_ID
```

and

```text
https://www.youtube.com/watch?v=VIDEO_ID
```

Both identify the same video object through the shared identifier:

```text
VIDEO_ID
```

The operating transformation is therefore a path substitution:

```text
/shorts/VIDEO_ID
        ↓
/watch?v=VIDEO_ID
```

This observation enables direct conversion between the two presentation modes.

---

# 2. URL Transformation

Let

```text
U = /shorts/x
```

where

```text
x ∈ V
```

and

```text
V = set of valid YouTube video identifiers.
```

Define the transformation operator:

```text
T(U) = /watch?v=x
```

Then

```text
T : Shorts → Watch
```

maps a Shorts URL representation into the conventional YouTube watch representation without modifying the underlying video.

---

# 3. Minimal Bookmarklet

The smallest practical bookmarklet performs a direct substitution and redirects the browser to the watch page.

```javascript
javascript:(()=>{const m=location.pathname.match(/^\/shorts\/([^/?]+)/);if(m)location.replace(`/watch?v=${m[1]}`);})();
```

### Properties

- Minimal implementation.
- Uses browser-relative URLs.
- Removes the Shorts page from history via `location.replace()`.
- Requires a single click.

---

# 4. Query-Preserving Bookmarklet

Some Shorts URLs contain additional query parameters.

Example:

```text
https://www.youtube.com/shorts/VIDEO_ID?feature=share
```

The following bookmarklet preserves existing parameters while converting the path:

```javascript
javascript:(()=>{const m=location.pathname.match(/^\/shorts\/([^/?]+)/);if(!m)return;const u=new URL(location.href);u.pathname='/watch';u.searchParams.set('v',m[1]);location.replace(u);})();
```

### Properties

- Preserves existing URL parameters.
- Adds or updates the required `v` parameter.
- Avoids creation of an extra history entry.

---

# 5. Automatic Browser Conversion

For users who consistently prefer the standard video interface, a userscript can perform the conversion automatically.

## Tampermonkey / Violentmonkey Script

```javascript
// ==UserScript==
// @name         Shorts -> Watch
// @match        https://www.youtube.com/shorts/*
// @run-at       document-start
// ==/UserScript==

(() => {
    const m = location.pathname.match(/^\/shorts\/([^/?]+)/);

    if (m) {
        location.replace(`/watch?v=${m[1]}`);
    }
})();
```

### Properties

- No user interaction required.
- Executes before the Shorts interface fully loads.
- Maintains a traditional YouTube viewing experience.
- Eliminates most exposure to the Shorts interface.

---

# 6. Discussion

The conversion demonstrates a common web architecture principle:

```text
Resource Identity ≠ Resource Presentation
```

The underlying resource is the video identifier:

```text
VIDEO_ID
```

while the interface is selected by the URL structure:

```text
/shorts/
/watch
```

The transformation therefore changes only presentation while preserving content identity.

Conceptually:

```text
Video Asset
      │
      ├── Shorts Presentation
      │        /shorts/x
      │
      └── Standard Presentation
               /watch?v=x
```

No video metadata, content, ownership, or playback resource is modified by the conversion.

---

# 7. Conclusion

A YouTube Short can be viewed through the traditional YouTube interface by replacing:

```text
/shorts/VIDEO_ID
```

with

```text
/watch?v=VIDEO_ID
```

This transformation may be executed manually, through a bookmarklet, or automatically via a userscript. The procedure illustrates a simple but useful distinction between a digital resource and the interface through which that resource is presented.

---

# Appendix A: Transformation Function

```text
Given:

U = /shorts/x

Transformation:

T(U) = /watch?v=x

where:

x ∈ V

V = valid YouTube video identifiers
```

---

# Appendix B: Presentation Abstraction

```text
Resource R

Presentations:

P_shorts(R)
P_watch(R)

Transformation:

T : P_shorts(R) → P_watch(R)

Invariant:

R remains unchanged.
```

The bookmarklet and userscript implementations are practical realizations of the operator:

T : Shorts → Watch

# Appendix C: Bookmarklet code

```javascript
javascript:(()=>{if(!location.pathname.startsWith('/shorts/')){alert('Not a YouTube Shorts page');return;}const id=location.pathname.split('/')[2];const u=new URL(location.href);u.pathname='/watch';u.searchParams.set('v',id);location.href=u.toString();})();
```

