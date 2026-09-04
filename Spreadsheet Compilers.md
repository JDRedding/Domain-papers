# Spreadsheet Compilers

A spreadsheet compiler is a tool that converts Excel spreadsheets into standalone applications or executable code, often adding formula protection, VBA security, and execution without requiring Excel. Spreadsheet compilers sit in a distinct niche separate from normal spreadsheet software — they *transform* Excel workbooks into protected, standalone applications or into executable code. None of the sources above directly cover spreadsheet compilers, but they help contextualize why compilers exist: spreadsheets are powerful, widely used, and increasingly integrated with AI and workflow tools, yet they still expose formulas, VBA, and IP unless compiled.

## Key Use Cases and Benefits

- **Standalone applications:** Run spreadsheets without Excel.
- **Intellectual property protection:** Hide formulas and VBA logic.
- **Licensing control:** Issue machine-locked or time-limited activations.
- **Multi-language execution:** Transform formulas into Python, JS, Java, or C#.
- **Debugging and educational insights:** Visualize formula parsing and execution processes.

## 🧩 What Spreadsheet Compilers Actually Do
**Core functions:**

- Convert Excel logic (formulas + VBA) into protected binary code  
- Produce standalone executables that run without Excel  
- Hide formulas and internal logic  
- Provide licensing, activation, and hardware‑locking  
- Optionally generate code in languages like Python, JS, Java, C#  
- Offer debugging views of tokenization, ASTs, and execution flow  

This is fundamentally different from spreadsheet *software* or *AI spreadsheet tools*.

## 🧭 Choosing the Right Compiler

Choosing the right spreadsheet compiler depends on whether the goal is commercial deployment with robust protection (e.g., xlCompiler, XLS Padlock, XCell Compiler) or educational/research purposes with multi-language compilation (open-source solutions). Commercial solutions often include GUI tools, copy protection, and customer licensing features, while open-source projects provide hands-on access to compiler internals and code generation.

### If your goal is **commercial deployment**
Pick a commercial compiler:
- **xlCompiler** → strongest standalone EXE generation  
- **XLS Padlock** → strongest licensing + activation controls  
- **XCell Compiler** → strongest formula/VBA obfuscation  

### If your goal is **education, research, or custom compiler development**
Pick open‑source:
- **Spreadsheet Formula Compiler** → multi‑language codegen + visual debugging  
- **Spreadsheet Compiler Front‑End** → clean Java AST pipeline  

### If your goal is **workflow governance, audit trails, or collaboration**
Use spreadsheet management tools (TQMS, Solver, Rillion) — not compilers.  
These tools solve versioning and governance problems, not IP protection.  

## 📌 Why Spreadsheet Compilers Exist 

Modern spreadsheet tools emphasize collaboration, AI assistance, governance workflows, and large‑scale data handling — but **none** of them provide formula sealing, VBA protection, or standalone EXE generation.  
Sources highlight:

- Excel remains the most capable modeling environment, especially with Copilot AI editing workbooks directly. 
- Google Sheets dominates collaboration but still exposes formulas.  
- Governance tools like TQMS and Solver focus on version control, audit trails, and workflow safety — not IP protection. 
- AI spreadsheet tools automate formulas and analysis but do not secure or compile spreadsheets.   

This reinforces the need for **compilers**: they solve problems mainstream spreadsheet platforms do not address — especially commercial distribution, IP protection, and controlled execution.

### 🧠 Compilers vs AI Spreadsheet Tools

AI spreadsheet tools (Excel Copilot, Rows, Airtable, NL‑to‑formula assistants) focus on:

- Natural‑language formula generation  
- Automated analysis  
- Data cleaning  
- Multi‑step modeling  

But they **do not**:

- Hide formulas  
- Protect VBA  
- Generate EXEs  
- Provide licensing  
- Compile logic into binary code  

This means spreadsheet compilers remain a specialized category untouched by AI‑native spreadsheet evolution. AI helps build spreadsheets; compilers help *ship* them.

## 🧪 Open-Source Compilers
**Why choose open‑source?**

- Full access to internals  
- Ability to extend grammar, AST nodes, or codegen  
- Perfect for academic or experimental compiler work  
- No licensing or distribution restrictions

Most open‑source “spreadsheet compilers” are actually **three separate components**:

1. **Formula parser** → tokenization + AST  
2. **Dependency graph builder** → cell references + recalculation order  
3. **Execution engine or code generator** → Python/JS/Java/C#/Rust  

Only a few projects combine all three (Pycel, xlcalculator, Koala).  
Most commercial compilers combine all three *plus* licensing, obfuscation, and EXE packaging.

## 🧩 Compilers & Formula Engines

🧱 Comparison Table

| **Tool** | **Language** | **Parser** | **AST** | **Execution** | **Codegen** | **Notes** |
|---------|--------------|------------|---------|---------------|-------------|-----------|
| **Spreadsheet Formula Compiler** | JS/TS | ✔ | ✔ | ✔ | ✔ (Python/JS/Java/C#) | Multi‑language compiler + visual debugger |
| **Spreadsheet Compiler Front‑End** | Java | ✔ | ✔ | ✖ | ✖ | Clean front‑end for formula parsing; no runtime |
| **xlcalculator** | Python | ✔ | ✔ | ✔ | ✖ | Full Excel‑style runtime engine |
| **Koala Spreadsheet Engine** | Java | ✔ | ✔ | ✔ | ✖ | JVM spreadsheet engine with dependency graph |
| **Pycel** | Python | ✔ | ✔ | ✔ | ✔ (Python) | Converts Excel formulas into Python functions |
| **Formulajs** | JavaScript | ✖ | ✖ | ✔ | ✖ | JS implementation of Excel functions (runtime only) |
| **ExcelFormulaParser** | C# | ✔ | ✔ | ✖ | ✖ | Parser + AST; no execution |
| **xlformula** | Rust | ✔ | ✔ | Partial | ✖ | High‑performance Rust formula parser |
| **SheetJS Formula Engine** | JavaScript | ✔ | ✔ | ✔ | ✖ | Browser/Node formula engine |
| **LibreOffice Calc Engine** | C++/UNO | ✔ | ✔ | ✔ | ✖ | Most complete open‑source spreadsheet engine |


### Spreadsheet Formula Compiler 
(GitHub: [only-komal](https://github.com/only-komal/spreadsheet-formula-compiler))

This tool parses, analyzes, and compiles spreadsheet formulas into executable code in multiple programming languages including Python, JavaScript, Java, and C#. It provides a visual web interface for formula tokenization, AST generation, execution, and debugging. Intended also as a learning tool, it demonstrates compiler design concepts like lexical analysis, parsing, AST construction, and multi-language code generation.

### Spreadsheet Compiler Front-End 
(GitHub: [AKAnole](https://github.com/AKAnole/SpreadsheetCompiler))

A Java-based front-end project for spreadsheet formula languages. It performs lexical analysis, parsing, and AST construction for formulas but does not execute calculations. This is suitable for educational or research purposes to understand compiler architecture and formula analysis.

### **xlcalculator** (Python)
A Python engine that parses Excel formulas, builds ASTs, and executes them without Excel.

- Supports Excel formula grammar  
- Builds dependency graphs  
- Executes formulas programmatically  
- Can be embedded into larger applications  
- Often used as a backend for custom spreadsheet runtimes  

**Why it matters:**  
It’s one of the closest open‑source tools to a *runtime compiler* for Excel logic.

---

### **Koala Spreadsheet Engine** (Java)
A full spreadsheet calculation engine written in Java.

- Parses formulas  
- Builds dependency graphs  
- Executes calculations  
- Supports many Excel functions  
- Can be embedded into JVM applications  

**Why it matters:**  
It’s a full execution engine — not just a parser — making it suitable for custom compiler backends.

---

### **Formulajs** (JavaScript)
A JS library implementing Excel‑compatible functions.

- Implements 400+ Excel functions  
- Used in web spreadsheet apps  
- Can serve as a codegen target for JS‑based compilers  

**Why it matters:**  
It’s not a compiler by itself, but it provides the *runtime* needed for JS code generation.

---

### **ExcelFormulaParser** (C#)
A C# parser for Excel formulas.

- Tokenizer + parser  
- AST generation  
- No execution engine  
- Useful for building your own compiler  

**Why it matters:**  
It’s similar to AKAnole’s Java front‑end but in C#.

---

### **Pycel** (Python)
A Python library that converts Excel spreadsheets into Python functions.

- Reads XLSX  
- Converts formulas into Python code  
- Builds dependency graphs  
- Executes calculations  

**Why it matters:**  
This is *very close* to a true compiler — it generates executable Python code from spreadsheets.

---

### **xlformula** (Rust)
A Rust-based Excel formula parser.

- Tokenizer  
- Parser  
- AST  
- Early-stage execution support  

**Why it matters:**  
Rust projects are rare in this domain; this one is promising for high‑performance compilers.

---

### **ExcelJS Formula Parser** (JavaScript)
Part of the ExcelJS ecosystem.

- Parses formulas  
- AST generation  
- Integrates with JS spreadsheet runtimes  

**Why it matters:**  
Useful for browser‑based or Node‑based compiler pipelines.

---

### **SheetJS Formula Engine** (JavaScript)
SheetJS (xlsx) includes a formula evaluation subsystem.

- Parses formulas  
- Executes many Excel functions  
- Works in browser and Node  
- Can be used as a backend for JS codegen  

**Why it matters:**  
SheetJS is widely used and stable — ideal for production-grade compiler backends.

---

### **LibreOffice Calc Engine** (C++/UNO)
Not a standalone compiler, but:

- Fully open-source  
- Full formula engine  
- Full calculation graph  
- Can be embedded via UNO API  

**Why it matters:**  
It’s the most complete open-source spreadsheet engine in existence.

## Commercial Spreadsheet Compilers

### xlCompiler

xlCompiler converts Excel spreadsheets into standalone EXE applications that do not require Microsoft Excel or additional modules. It compiles spreadsheets into binary code, protecting intellectual property and improving execution speed. Users can integrate complex calculations using both spreadsheet formulas and VBA code. The software provides copy-protection features and licenses for distribution.

### XLS Padlock

XLS Padlock allows compilation of Excel workbooks (XLS, XLSX, XLSM, XLSB) into secure Windows EXE applications. It hides formulas, converts VBA code into cryptic bytecode, and enables hardware-locked activation keys for licensing. Key features include per-cell formula protection, signed installer creation, and full control over customer licensing without subscription fees.

### DoneEx XCell Compiler

XCell Compiler focuses on workbook protection and copy safety. It compiles spreadsheets into executable files, converting formulas into a secure binary format and protecting VBA code. It supports hardware-based licensing, splash screens, and royalty-free distribution, while ensuring the original spreadsheet remains unchanged. It works on both 32-bit and 64-bit Excel versions.
