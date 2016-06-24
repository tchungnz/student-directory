def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def students_input
students = []
puts "Please enter the names of students:"
puts "To finish please hit return twice"
name = gets.chomp
puts "Please enter the country the student is from:"
country = gets.chomp
puts "Please enter the age of the student:"
age = gets.chomp
puts "Please enter the height of the student in cm:"
height = gets.chomp

while !name.empty? do
    students << {name: name, cohort: :november, country: country, age: age, height: height}
    puts "Now we have #{students.count} students"
    puts "Please enter the names of students:"
    puts "To finish please hit return twice"
    name = gets.chomp
    puts "Please enter the country the student is from:"
    country = gets.chomp
    puts "Please enter the age of the student:"
    age = gets.chomp
    puts "Please enter the height of the student in cm:"
    height = gets.chomp
end

students
end

def print_students(students)

puts "Please enter the starting letter of students you want to print:"
letter = gets.chomp

x = 0
while x < (students.size)
    if students[x][:name][0] == letter
        puts "#{students[x][:name]} (#{students[x][:cohort]} cohort)"
    end
x += 1
end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = students_input
print_header
print_students(students)
print_footer(students)