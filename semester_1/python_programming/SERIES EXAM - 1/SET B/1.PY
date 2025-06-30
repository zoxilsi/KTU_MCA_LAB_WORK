def is_palindrome(str):
    return str == str[::-1]
val = input("Enter the string : ")
if is_palindrome(val):
    print("Palindrome")
else:
    print("Not a palindrome")    