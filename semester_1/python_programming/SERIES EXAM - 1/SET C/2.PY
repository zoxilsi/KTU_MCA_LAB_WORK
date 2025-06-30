def rotate_list(nums, steps):
    if not nums:
        return []
    steps = steps % len(nums)  
    return nums[-steps:] + nums[:-steps]
nums = input("Enter a list of numbers separated by spaces: ")
nums = list(map(int, nums.split()))
steps = int(input("Enter the number of steps to rotate: "))
rotated_list = rotate_list(nums, steps)
print("Rotated List:", rotated_list)
