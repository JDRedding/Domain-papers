# Pyspread
Pyspread is a non-traditional spreadsheet: 
[pyspread.gitlab.io](https://pyspread.gitlab.io/)

Pyspread is a non-traditional, Python-based spreadsheet that allows each cell to contain Python code, returning Python objects, and providing extensive computational and visualization capabilities. Pyspread enables interactive analysis, plotting, and high-level mathematical operations using Python’s rich ecosystem. Users can dynamically manipulate data, create visualizations directly in the spreadsheet, and export results for reporting or further processing. Pyspread combines the flexibility of Python with the spreadsheet paradigm, making it particularly powerful for scientific computation, data analysis, and users seeking a programmable spreadsheet environment.

Pyspread is free and open-source software, licensed under GPL v3, and supports Python 3.6 and later. The latest stable release is version 2.4.5, compatible with Unix-like and Windows operating systems.

## Overview

Pyspread differs from conventional spreadsheets by requiring Python expressions in its grid cells instead of using a proprietary formula language. This approach allows cells to return any Python object, including numbers, strings, lists, matrices, and more complex structures, making it highly flexible for technical and scientific calculations.

## Key Features

- **Python cell expressions:** Cells can directly evaluate Python code, enabling complex calculations and logic.
- **Integration with Python modules:** Users can access libraries like NumPy, PyMoneyed, Matplotlib, Plotnine, and R graphics to enhance data analysis and visualization.
- **Data import and export:** Supports CSV, SVG, XLSX (experimental), and PDF exports.
- **Rich cell content:** Cells can display text, markup, images, dates, charts, and handle vector and bitmap graphics.
- **File and security features:** Uses a git-able `.pysu` save file format and supports blake2b-based save signatures to enhance security against unauthorized code execution.
- **Extensibility:** Includes macros, plotting dialogs, and Python module imports for user-defined analysis.
- **Spell checker:** Optional dependency for text-heavy spreadsheets.

## Target Users

Pyspread is designed for users proficient in or learning Python, especially for technical, scientific, or research workflows. Example users include researchers comparing parameter sets in simulations or analysts preparing complex business calculations with precision numeric types.

It may not be ideal for users unfamiliar with programming, such as those seeking a simple Excel replacement or requiring out-of-the-box parallel computation.

## Technical and Platform Details

- **Platform:** PyQt 6-based graphical interface
- **Size:** Approximately 2.3 MB
- **Supported OS:** Linux distributions (Arch, Debian, Mageia, NixOS, Slackware, Ubuntu) and Windows
- **Installation:** Recommended via OS packages, pip, or using a Python virtual environment; QtSvg extension for PyQt is required


