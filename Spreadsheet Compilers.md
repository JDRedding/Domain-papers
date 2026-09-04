# Spreadsheet Compilers

A spreadsheet compiler is a tool that converts Excel spreadsheets into standalone applications or executable code, often adding formula protection, VBA security, and execution without requiring Excel.

## Key Use Cases and Benefits

- **Standalone applications:** Run spreadsheets without Excel.
- **Intellectual property protection:** Hide formulas and VBA logic.
- **Licensing control:** Issue machine-locked or time-limited activations.
- **Multi-language execution:** Transform formulas into Python, JS, Java, or C#.
- **Debugging and educational insights:** Visualize formula parsing and execution processes.

## Choosing a Compiler

Choosing the right spreadsheet compiler depends on whether the goal is commercial deployment with robust protection (e.g., xlCompiler, XLS Padlock, XCell Compiler) or educational/research purposes with multi-language compilation (open-source solutions). Commercial solutions often include GUI tools, copy protection, and customer licensing features, while open-source projects provide hands-on access to compiler internals and code generation.

## Open-Source and Educational Spreadsheet Compilers

### Spreadsheet Formula Compiler (GitHub: only-komal)

This tool parses, analyzes, and compiles spreadsheet formulas into executable code in multiple programming languages including Python, JavaScript, Java, and C#. It provides a visual web interface for formula tokenization, AST generation, execution, and debugging. Intended also as a learning tool, it demonstrates compiler design concepts like lexical analysis, parsing, AST construction, and multi-language code generation.

### Spreadsheet Compiler Front-End (GitHub: AKAnole)

A Java-based front-end project for spreadsheet formula languages. It performs lexical analysis, parsing, and AST construction for formulas but does not execute calculations. This is suitable for educational or research purposes to understand compiler architecture and formula analysis.

## Commercial Spreadsheet Compilers

### xlCompiler

xlCompiler converts Excel spreadsheets into standalone EXE applications that do not require Microsoft Excel or additional modules. It compiles spreadsheets into binary code, protecting intellectual property and improving execution speed. Users can integrate complex calculations using both spreadsheet formulas and VBA code. The software provides copy-protection features and licenses for distribution.

### XLS Padlock

XLS Padlock allows compilation of Excel workbooks (XLS, XLSX, XLSM, XLSB) into secure Windows EXE applications. It hides formulas, converts VBA code into cryptic bytecode, and enables hardware-locked activation keys for licensing. Key features include per-cell formula protection, signed installer creation, and full control over customer licensing without subscription fees.

### DoneEx XCell Compiler

XCell Compiler focuses on workbook protection and copy safety. It compiles spreadsheets into executable files, converting formulas into a secure binary format and protecting VBA code. It supports hardware-based licensing, splash screens, and royalty-free distribution, while ensuring the original spreadsheet remains unchanged. It works on both 32-bit and 64-bit Excel versions.
