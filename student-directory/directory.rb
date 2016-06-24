def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def students_input
students = []
puts "Please enter the names of students:"
puts "To finish please hit return twice"
name = gets.chomp
puts "Please enter the cohort:"
cohort = gets.chomp.to_sym
    if cohort == ""
        cohort = "November"
    end

while !name.empty? do
    students << {name: name, cohort: cohort, country: :TBC, age: :TBC, height: :TBC}
    puts "Now we have #{students.count} students"
    puts "Please enter the names of students:"
    puts "To finish please hit return twice"
    name = gets.chomp
    puts "Please enter the cohort:"
    cohort = gets.chomp
    if cohort == ""
        cohort = "November"
    end
end
students
end

def print_students(students)

puts "Please enter the starting letter of students you want to print:"
letter = gets.chomp

x = 0
while x < (students.size)
    if students[x][:name][0] == letter
        puts "#{students[x][:name]} (#{students[x][:cohort]} cohort)".center(100)
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