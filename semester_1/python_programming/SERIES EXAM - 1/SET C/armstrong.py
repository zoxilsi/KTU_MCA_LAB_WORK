def is_armstrong(number):
    digits = [int(d) for d in str(number)]
    power = len(digits)
    return number == sum(d ** power for d in digits)

def generate_armstrong(lower_limit, upper_limit):
    return [num for num in range(lower_limit, upper_limit + 1) if is_armstrong(num)]
