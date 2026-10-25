import math
import matplotlib.pyplot as plt
import numpy as np

class QuadraticAnalyzer:
    def __init__(self):
        self.A = self.B = self.C = None
        self.D = self.PLUS = self.MINX = self.AVG = None
        self.vertex_y = None

    def enter(self):
        print("ax² + bx + c")
        try:
            self.A = float(input("A = "))
            if self.A == 0:
                print("A cannot be 0 (not quadratic).")
                return
            self.B = float(input("B = "))
            self.C = float(input("C = "))
            self._compute()
            print("Coefficients stored.")
        except ValueError:
            print("Invalid number.")

    def _compute(self):
        if self.A is None:
            return
        self.D = self.B**2 - 4*self.A*self.C
        self.AVG = -self.B / (2*self.A)
        self.vertex_y = self.A*self.AVG**2 + self.B*self.AVG + self.C
        if self.D >= 0:
            sqrtD = math.sqrt(self.D)
            self.PLUS = (-self.B + sqrtD) / (2*self.A)
            self.MINX = (-self.B - sqrtD) / (2*self.A)
            # Order so MINX <= PLUS
            if self.MINX > self.PLUS:
                self.MINX, self.PLUS = self.PLUS, self.MINX
        else:
            self.PLUS = self.MINX = None

    def factor(self):
        if self.A is None:
            print("Enter A, B, C first.")
            return
        if self.D < 0:
            print("No real factors (discriminant < 0).")
            return
        # Attempt monic-style (x - r1)(x - r2) scaled by A
        r1, r2 = self.MINX, self.PLUS
        print(f"(x + {-r1:g})(x + {-r2:g})   [scaled by A={self.A:g}]")
        print(f"or  {self.A:g}(x - {r1:g})(x - {r2:g})")

    def analy(self):
        if self.A is None:
            print("Enter A, B, C first.")
            return
        print(f"Concave {'up' if self.A > 0 else 'down'}")
        print(f"Vertex: ({self.AVG:g}, {self.vertex_y:g})")
        print(f"Axis: x = {self.AVG:g}")
        if self.D >= 0:
            print(f"X-Int: {self.MINX:g}, {self.PLUS:g}")
        else:
            print("X-Int: none (complex)")
        print(f"Y-Int: {self.C:g}")
        if self.A > 0:
            print(f"Inc: ({self.AVG:g}, inf)")
            print(f"Dec: (-inf, {self.AVG:g})")
        else:
            print(f"Inc: (-inf, {self.AVG:g})")
            print(f"Dec: ({self.AVG:g}, inf)")

    def abchow(self):
        print("x = [-b ± √(b² - 4ac)] / (2a)")
        if self.A is None:
            return
        print(f"x = [{-self.B:g} ± √({self.B**2:g} - 4*{self.A:g}*{self.C:g})] / (2*{self.A:g})")
        print(f"x = [{-self.B:g} ± √({self.D:g})] / {2*self.A:g}")

    def derabc(self):
        print("Derivation (completing the square):")
        print("ax² + bx + c = 0")
        print("x² + (b/a)x + (c/a) = 0")
        print("x² + (b/a)x = -(c/a)")
        print("x² + (b/a)x + (b/(2a))² = -(c/a) + (b/(2a))²")
        print("(x + b/(2a))² = (b² - 4ac)/(4a²)")
        print("x + b/(2a) = ±√[(b² - 4ac)/(4a²)]")
        print("x = -b/(2a) ± √(b² - 4ac)/(2a)")
        print("x = [-b ± √(b² - 4ac)] / (2a)")

    def graph(self):
        if self.A is None:
            print("Enter A, B, C first.")
            return
        # Reasonable window around vertex and intercepts
        x_center = self.AVG
        span = max(5, abs(self.PLUS - self.MINX) if self.D >= 0 else 5)
        x = np.linspace(x_center - span, x_center + span, 400)
        y = self.A*x**2 + self.B*x + self.C
        plt.figure(figsize=(8, 5))
        plt.plot(x, y, label=f"{self.A:g}x² + {self.B:g}x + {self.C:g}")
        plt.axhline(0, color='gray', linewidth=0.5)
        plt.axvline(0, color='gray', linewidth=0.5)
        plt.plot(self.AVG, self.vertex_y, 'ro', label='Vertex')
        if self.D >= 0:
            plt.plot([self.MINX, self.PLUS], [0, 0], 'go', label='Roots')
        plt.plot(0, self.C, 'bo', label='Y-int')
        plt.title("Quadratic Graph")
        plt.xlabel("x")
        plt.ylabel("y")
        plt.legend()
        plt.grid(True)
        plt.show()

    def menu(self):
        while True:
            print("\n--- Quadratic Analyzer (TI-85 style) ---")
            print("1. Enter A B C")
            print("2. Factor")
            print("3. Analysis (vertex, intercepts, inc/dec)")
            print("4. Show quadratic formula")
            print("5. Derive formula (completing square)")
            print("6. Graph")
            print("7. Exit")
            choice = input("Choice: ").strip()
            if choice == '1':
                self.enter()
            elif choice == '2':
                self.factor()
            elif choice == '3':
                self.analy()
            elif choice == '4':
                self.abchow()
            elif choice == '5':
                self.derabc()
            elif choice == '6':
                self.graph()
            elif choice == '7':
                break
            else:
                print("Invalid choice.")

if __name__ == "__main__":
    app = QuadraticAnalyzer()
    app.menu()
