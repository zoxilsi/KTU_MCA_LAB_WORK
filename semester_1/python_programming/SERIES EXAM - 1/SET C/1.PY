import armstrong

lower_limit = int(input("Enter the lower limit: "))
upper_limit = int(input("Enter the upper limit: "))

armstrong_numbers = armstrong.generate_armstrong(lower_limit, upper_limit)
print(f"Armstrong numbers between {lower_limit} and {upper_limit}: {armstrong_numbers}")
