# MathJax
**MathJax** is an open-source JavaScript library for rendering high-quality mathematical notation (LaTeX, MathML, and AsciiMath) in web browsers, with strong accessibility support (screen readers, expression explorer, speech generation).

### GitHub repositories

| Repository | Description | Link |
|------------|-------------|------|
| **MathJax** (main / packaged) | Pre-built components used on CDNs and by most sites. Main issue tracker. | [github.com/mathjax/MathJax](https://github.com/mathjax/MathJax) |
| **MathJax-src** | Source code (TypeScript) for MathJax 3+ | [github.com/mathjax/MathJax-src](https://github.com/mathjax/MathJax-src) |
| **MathJax organization** | All related repos | [github.com/mathjax](https://github.com/mathjax) |
| **MathJax-docs** | Documentation source | [github.com/mathjax/MathJax-docs](https://github.com/mathjax/MathJax-docs) |

### CDN
```html
<script src="https://cdn.jsdelivr.net/npm/mathjax@4/tex-mml-chtml.js" defer></script>
```

### External links
- Website: [mathjax.org](https://www.mathjax.org)
- Docs: [docs.mathjax.org](https://docs.mathjax.org)
- Issues: [github.com/mathjax/MathJax/issues](https://github.com/mathjax/MathJax/issues)

## Appendix A. MathJax Usage Examples

The repository uses standard LaTeX mathematics compatible with MathJax.
Examples below show the source code that can be copied directly into
a MathJax-enabled document.

Example 1: Inline Mathematics

Source:

    $E = mc^2$

Result:

    E = mc²

------------------------------------------------------------

Example 2: Fractions

Source:

    $\frac{a}{b}$

Source:

    $$
    \frac{a+b}{c+d}
    $$

------------------------------------------------------------

Example 3: Superscripts and Subscripts

Source:

    $x_i$

Source:

    $x^2$

Source:

    $x_i^2$

------------------------------------------------------------

Example 4: Summation

Source:

    $$
    \sum_{i=1}^{N} x_i
    $$

------------------------------------------------------------

Example 5: Product

Source:

    $$
    \prod_{n=1}^{N} a_n
    $$

------------------------------------------------------------

Example 6: Integral

Source:

    $$
    \int_a^b f(x)\,dx
    $$

------------------------------------------------------------

Example 7: Partial Derivative

Source:

    $$
    \frac{\partial \rho}{\partial t}
    =
    -\nabla \cdot (\rho \mathbf{v})
    $$

------------------------------------------------------------

Example 8: Matrix

Source:

    $$
    A =
    \begin{bmatrix}
    a & b \\
    c & d
    \end{bmatrix}
    $$

------------------------------------------------------------

Example 9: Greek Symbols

Source:

    $\alpha$

    $\beta$

    $\gamma$

    $\Gamma$

    $\Omega$

------------------------------------------------------------

Example 10: Sets

Source:

    $$
    A = \{x \in \mathbb{R} : x > 0\}
    $$

------------------------------------------------------------

Example 11: Limits

Source:

    $$
    \lim_{x \to 0}
    \frac{\sin x}{x}
    = 1
    $$

------------------------------------------------------------

Example 12: RDG State Space

Source:

    $$
    \mathcal{R}
    =
    \{S,I,D,P,E,Q\}
    $$

------------------------------------------------------------

Example 13: RDG Transition Operator

Source:

    $$
    \Gamma :
    \mathcal{X}_{micro}
    \rightarrow
    \mathcal{X}_{meso}
    \rightarrow
    \mathcal{X}_{macro}
    $$

------------------------------------------------------------

Example 14: SID/PED Coupling

Source:

    $$
    \Psi
    =
    (S,I,D)
    \oplus
    (P,E,Q)
    $$

------------------------------------------------------------

Example 15: Master Evolution Equation

Source:

    $$
    \frac{d\Psi}{dt}
    =
    F(\Psi,Q,\Gamma)
    $$

------------------------------------------------------------

Minimal MathJax Loader

    <script
      src="https://cdn.jsdelivr.net/npm/mathjax@4/tex-mml-chtml.js"
      defer>
    </script>

Once loaded, all LaTeX expressions enclosed in

    $ ... $

or

    $$ ... $$

are rendered automatically by MathJax.
