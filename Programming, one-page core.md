# Programming one-page core 
Rules summary 

Code is clean if it can be understood easily by everyone on the team. 
Clean code can be read and enhanced by a developer other than its original author. 
With understandability come readability, changeability, extensibility, and maintainability.

## Core Principles

## Understandability Tips
- Be consistent. If you do something a certain way, do all similar things the same way.
- Use explanatory variables.
- Encapsulate boundary conditions. They are hard to keep track of, so put the processing for them in one place.
- Prefer dedicated value objects to primitive types.
- Avoid logical dependency. Don’t write methods that work correctly only because of something else in the same class.
- Avoid negative conditionals.
- Avoid deep nesting; use guard clauses.

## General Rules
- Follow standard conventions.
- Follow the Boy Scout Rule: leave the campground cleaner than you found it.
- Always find the root cause of a problem.
- Focus on fundamentals, not syntax. Syntax can be looked up; concepts must be understood.
- Avoid premature optimization. Optimize only when you know the bottleneck. Clear code first, performance second.
- Refactor continuously. Code will not be perfect the first time.

### 1. Keep It Simple (KISS)
- Simplicity reduces bugs and makes code easier to understand.
- Avoid cleverness. Prefer straightforward logic and clear variable names.
- Simpler is always better. Reduce complexity as much as possible.

### 2. Don’t Repeat Yourself (DRY)
- Duplicate logic increases maintenance cost and error risk.
- Extract common behavior into functions, modules, or abstractions.

### 3. You Aren’t Gonna Need It (YAGNI)
- Don’t build features “just in case.”
- Write only what current requirements demand to avoid bloat.

### 4. Single Responsibility & Separation of Concerns
- Each class or module should have one reason to change.
- Keep data, logic, and presentation separate (for example, MVC).

### 5. SOLID
- **Single Responsibility**
- **Open/Closed:** extend, don’t modify
- **Liskov Substitution**
- **Interface Segregation**
- **Dependency Inversion**

These principles improve extensibility and maintainability.

### 6. Law of Demeter (Least Knowledge)
- A class should know only its direct dependencies.
- Modules should talk only to their direct collaborators.
- This reduces coupling and increases maintainability.

## Design Rules
- Keep configurable data at high levels.
- Prefer polymorphism to `if/else` or `switch/case`.
- Prefer composition over inheritance for flexible behavior.
- Separate multi-threading code.
- Prevent over-configurability.
- Use dependency injection.


## Naming Rules
- Choose descriptive and unambiguous names.
- Make meaningful distinctions.
- Use pronounceable names.
- Use searchable names.
- Replace magic numbers with named constants.
- Avoid encodings. Don’t append prefixes or type information.
- Good naming reduces the need for comments.

## Function Rules
- Keep functions small.
- Do one thing.
- Use descriptive names.
- Prefer fewer arguments.
- Have no side effects.
- Don’t use flag arguments. Split the method into independent methods that the client can call without a flag.

## Comment & Documentation Rules
- Always try to explain yourself in code.
- Comment *why*, not *what*.
- Don’t be redundant.
- Don’t add obvious noise.
- Don’t use closing-brace comments.
- Don’t comment out code. Just remove it.
- Use comments to explain intent, clarify tricky logic, and warn of consequences.
- Document intent, assumptions, and non-obvious behavior.

## Source Code Structure
- Separate concepts vertically.
- Related code should appear vertically dense.
- Declare variables close to their usage.
- Dependent functions should be close.
- Similar functions should be close.
- Place functions in the downward direction.
- Keep lines short.
- Don’t use horizontal alignment.
- Use whitespace to associate related things and disassociate weakly related things.
- Don’t break indentation.
- Keep code consistent in style and structure.

## Objects and Data Structures
- Hide internal structure.
- Prefer data structures.
- Avoid hybrid structures (half object and half data).
- Keep objects small.
- Do one thing.
- Use a small number of instance variables.
- A base class should know nothing about its derivatives.
- It is better to have many functions than to pass code into a function to select a behavior.
- Prefer non-static methods to static methods.

## Tests & Review
- One assert per test.
- Tests should be readable, fast, independent, and repeatable.
- Good developers test their code and review others’ work.

## Code feels
- **Rigidity:** The software is difficult to change. A small change causes a cascade of subsequent changes.
- **Fragility:** The software breaks in many places because of a single change.
- **Immobility:** You cannot reuse parts of the code in other projects because of the involved risks and high effort.
- **Needless complexity.**
- **Needless repetition.**
- **Opacity:** The code is hard to understand.
