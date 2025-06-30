import math
def sin_series(x, n):

    sin_val = 0
    for i in range(n):
        term = ((-1) ** i) * (x ** (2 * i + 1)) / math.factorial(2 * i + 1)
        sin_val += term
    return sin_val

x = float(input("Enter the value x : "))
n = int(input("Enter the number of terms: "))  

x = math.radians(x) 
print(f"Approx sin value: {sin_series(x, n)}")
print(f"Actual sin value: {math.sin(x)}")
