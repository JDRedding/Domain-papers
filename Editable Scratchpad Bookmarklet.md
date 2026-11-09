# Editable Scratchpad Bookmarklet

A surprisingly useful browser tool is the following one-line URL:

```text
data:text/html,<html contenteditable>
```

When opened, it creates a blank webpage whose entire document is editable. The page acts as a lightweight in-browser scratchpad for notes, drafts, calculations, brainstorming, and temporary text.

## What It Does

The HTML attribute:

```html
<html contenteditable>
```

enables editing for the entire document.

Combined with a `data:` URL:

```text
data:text/html,<html contenteditable>
```

the browser generates a new page directly from the provided HTML source without requiring a server or local file.

The result is an instantly editable blank page.

## Usage

### Direct URL

Paste the following into the browser address bar:

```text
data:text/html,<html contenteditable>
```

Press **Enter** and begin typing anywhere on the page.

### Bookmark

Create a bookmark with the URL:

```text
data:text/html,<html contenteditable>
```

Clicking the bookmark opens a fresh editable document.

## Features

- No installation required
- No external dependencies
- Works entirely in the browser
- Instant note-taking
- Supports copy/paste
- Supports rich text in most browsers
- Useful as a temporary scratchpad

## Example Uses

### Quick Notes

```text
Shopping List
-------------
Milk
Bread
Eggs
```

### Calculations

```text
Revenue = 1250
Cost = 840
Profit = 410
```

### Draft Writing

```text
Meeting Notes
-------------
Action Items:
- Finish report
- Review budget
- Schedule follow-up
```

### Temporary Clipboard

Paste multiple pieces of information
