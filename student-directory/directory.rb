def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def students_input
puts "Please enter the names of students:"
puts "To finish please hit return twice"

students = []
name = gets.chomp

while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
end
students
end

def print_students(students)

puts "Please enter the starting letter of students you want to print:"
letter = gets.chomp.capitalize

students.each.with_index(1) do |student, index|
    if student[:name][0] == letter
        puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)"
    end
end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = students_input
print_header
print_students(students)
print_footer(students)