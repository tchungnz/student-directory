#First we print the list of students
students = ["Dr. Hannibal Lecter", "Darth Vader", "Nurse Ratched",
"Alex DeLarge", "The Wicked Witch of the West", "Terminator", "Freddy Krueger",
"The Joker", "Joffrey Baratheon", "Norman Bates"]

puts "The students of Villains Academy"
puts "-------------"

students.each do |student|
    puts student
end

#Finally, we print the number of students
print "Overall, we have #{students.count} great students"