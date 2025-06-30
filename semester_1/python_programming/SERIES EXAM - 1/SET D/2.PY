def calculate_total(marks):
    return sum(marks)

def calculate_average(marks):
    return sum(marks) / len(marks)

def display_above_average(students, threshold):
    print(f"\nStudents with an average above {threshold}:")
    for student, marks in students.items():
        average = calculate_average(marks)
        if average > threshold:
            print(f"{student}: Average = {average:.2f}")

def take_student_input():
    students = {}
    while True:
        student_name = input("Enter student name (or type 'exit' to stop): ")
        if student_name.lower() == 'exit':
            break
        
        marks = []
        for i in range(1, 4):
            mark = float(input(f"Enter marks for subject {i} for {student_name}: "))
            marks.append(mark)
        
        students[student_name] = marks
    return students

students = take_student_input()
    
print("\nStudent Records:", students)

for student, marks in students.items():
    total = calculate_total(marks)
    average = calculate_average(marks)
    print(f"{student}: Total = {total}, Average = {average:.2f}")

threshold = float(input("\nEnter the average threshold to filter students: "))
display_above_average(students, threshold)
