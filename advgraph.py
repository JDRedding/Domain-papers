import numpy as np
import matplotlib.pyplot as plt
from sympy import symbols, lambdify, sympify
from sympy.core.sympify import SympifyError

# Default window and interval
x_min, x_max = -10, 10
y_min, y_max = -10, 10
interval = 5          # distance between shade lines
func_expr = None
f = None              # numeric function

x_sym = symbols('x')

def get_function():
    global func_expr, f
    while True:
        try:
            s = input("y = ").strip()
            if not s:
                continue
            expr = sympify(s)
            f = lambdify(x_sym, expr, modules=['numpy'])
            func_expr = expr
            print(f"Function stored: y = {expr}")
            return
        except (SympifyError, TypeError, ValueError) as e:
            print(f"Invalid expression: {e}")

def set_window():
    global x_min, x_max, y_min, y_max
    try:
        x_min = float(input(f"xMin [{x_min}]: ") or x_min)
        x_max = float(input(f"xMax [{x_max}]: ") or x_max)
        y_min = float(input(f"yMin [{y_min}]: ") or y_min)
        y_max = float(input(f"yMax [{y_max}]: ") or y_max)
    except ValueError:
        print("Invalid number, window unchanged.")

def change_interval():
    global interval
    try:
        val = float(input(f"Interval [{interval}]: ") or interval)
        if val <= 0:
            print("Interval must be positive.")
            return
        interval = val
    except ValueError:
        print("Invalid number.")

def plot_base():
    """Return figure, axes, and x values for the current window."""
    fig, ax = plt.subplots(figsize=(8, 6))
    ax.set_xlim(x_min, x_max)
    ax.set_ylim(y_min, y_max)
    ax.grid(True, alpha=0.3)
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    return fig, ax

def shade_above():
    if f is None:
        print("No function entered.")
        return
    fig, ax = plot_base()
    xs = np.linspace(x_min, x_max, 2000)
    ys = f(xs)
    ax.plot(xs, ys, 'b-', linewidth=1.5, label=str(func_expr))

    # Vertical shade lines from curve up to y_max
    for x in np.arange(x_min, x_max + interval, interval):
        y_val = f(x)
        if np.isfinite(y_val):
            ax.plot([x, x], [y_val, y_max], 'r-', linewidth=0.8, alpha=0.6)

    ax.set_title(f"Shade above: y = {func_expr}")
    ax.legend()
    plt.tight_layout()
    plt.show()

def shade_below():
    if f is None:
        print("No function entered.")
        return
    fig, ax = plot_base()
    xs = np.linspace(x_min, x_max, 2000)
    ys = f(xs)
    ax.plot(xs, ys, 'b-', linewidth=1.5, label=str(func_expr))

    # Vertical shade lines from y_min up to curve
    for x in np.arange(x_min, x_max + interval, interval):
        y_val = f(x)
        if np.isfinite(y_val):
            ax.plot([x, x], [y_min, y_val], 'r-', linewidth=0.8, alpha=0.6)

    ax.set_title(f"Shade below: y = {func_expr}")
    ax.legend()
    plt.tight_layout()
    plt.show()

def thick_line():
    if f is None:
        print("No function entered.")
        return
    fig, ax = plot_base()
    xs = np.linspace(x_min, x_max, 2000)
    ys = f(xs)
    ax.plot(xs, ys, 'b-', linewidth=4, label=str(func_expr))
    ax.set_title(f"Thick line: y = {func_expr}")
    ax.legend()
    plt.tight_layout()
    plt.show()

def main_menu():
    while True:
        print("\n=== AdvancedGraph (Python) ===")
        print("1. Shade above  (↑)")
        print("2. Shade below  (↓)")
        print("3. Thick line   (█)")
        print("4. Window")
        print("5. More")
        print("6. Quit")
        choice = input("Choice: ").strip()

        if choice == "1":
            shade_above()
        elif choice == "2":
            shade_below()
        elif choice == "3":
            thick_line()
        elif choice == "4":
            window_menu()
        elif choice == "5":
            more_menu()
        elif choice == "6":
            print("Goodbye.")
            break
        else:
            print("Invalid choice.")

def window_menu():
    while True:
        print("\n--- Window ---")
        print("1. Set")
        print("2. Zoom In")
        print("3. Zoom Out")
        print("4. Back")
        c = input("Choice: ").strip()
        if c == "1":
            set_window()
        elif c == "2":
            global x_min, x_max, y_min, y_max
            cx, cy = (x_min + x_max) / 2, (y_min + y_max) / 2
            dx, dy = (x_max - x_min) / 4, (y_max - y_min) / 4
            x_min, x_max = cx - dx, cx + dx
            y_min, y_max = cy - dy, cy + dy
            print("Zoomed in.")
        elif c == "3":
            cx, cy = (x_min + x_max) / 2, (y_min + y_max) / 2
            dx, dy = (x_max - x_min), (y_max - y_min)
            x_min, x_max = cx - dx, cx + dx
            y_min, y_max = cy - dy, cy + dy
            print("Zoomed out.")
        elif c == "4":
            return
        else:
            print("Invalid choice.")

def more_menu():
    while True:
        print("\n--- More ---")
        print("1. y= (new function)")
        print("2. Clear (just returns to menu)")
        print("3. Interval")
        print("4. Back")
        print("5. End")
        c = input("Choice: ").strip()
        if c == "1":
            get_function()
        elif c == "2":
            print("Drawing cleared (next plot starts fresh).")
        elif c == "3":
            change_interval()
        elif c == "4":
            return
        elif c == "5":
            print("Goodbye.")
            exit()
        else:
            print("Invalid choice.")

if __name__ == "__main__":
    print("TI-85 AdvancedGraph → Python")
    print("Supported: +, -, *, /, **, sin, cos, tan, exp, log, sqrt, abs, etc.")
    get_function()
    main_menu()
