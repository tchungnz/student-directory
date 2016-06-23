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
students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
end
end

def print_footer(students)
print "Overall, we have #{students.count} great students"
end

students = students_input
print_header
print_students(students)
print_footer(students)