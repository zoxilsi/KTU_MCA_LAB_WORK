def change(str):
    str = str.lower()

    dict1 = {}
    for char in str:
        if char.isalpha():  
            dict1[char] = dict1.get(char, 0) + 1

    ans = sorted(dict1.items(), key=lambda x: (-x[1], x[0]))

    for char, freq in ans:
        print(f"{char}: {freq}")
val = input("Enter a string : ")
change(val)
