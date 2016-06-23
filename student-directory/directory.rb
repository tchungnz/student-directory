#First we print the list of students
students = ["Dr. Hannibal Lecter", "Darth Vader", "Nurse Ratched",
"Alex DeLarge", "The Wicked Witch of the West", "Terminator", "Freddy Krueger",
"The Joker", "Joffrey Baratheon", "Norman Bates"]

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print_students(names)
names.each do |student|
    puts student
end

def print_footer
print "Overall, we have #{names.count} great students"
end

print_header
print_students(students)
print_footer