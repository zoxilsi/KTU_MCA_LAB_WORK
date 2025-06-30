def sorting(num):
    n = len(num)
    for i in range(n):
        min_val = i
        for j in range(i+1, n):
            if num[j] < num[min_val]:
                min_val = j
        num[i], num[min_val] = num[min_val], num[i]
    return num

lst = []
size = int(input("Enter the size of the list: "))
for i in range(size):
    print(f"Enter the value {i}: ", end="")
    a = int(input())
    lst.append(a)
print(sorting(lst))