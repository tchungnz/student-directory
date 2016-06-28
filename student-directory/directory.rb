def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def name_input
    puts "Please enter the name of the student:"
    @name = gets.chomp
end

def cohort_input
    puts "Please enter the cohort of the student:"
    @cohort = gets.chomp
    if @cohort == ""
        @cohort = "November"
    end
end

def students_input
students = []
name_input
cohort_input
    while !@name.empty? do
        students << {name: @name, cohort: @cohort.to_sym}
        if students.length == 1
            puts "Now we have #{students.count} student"
        else puts "Now we have #{students.count} students"
        end
        name_input
        cohort_input
    end
   students
end

def cohort(students)
    @cohort_list = []
    students.each do |student|
        if !@cohort_list.include? student[:cohort]
            @cohort_list << student[:cohort]
        end
    end
    puts @cohort_list
end

def print_students(students)
    @cohort_list.each do |month|
        puts "Cohort #{month}:"
        students.each do |student|
            if student[:cohort] == month
                puts "#{student[:name]}"
            end
        end
    end
end

def print_footer(students)
    if students.size == 1
    puts "Overall, we have #{students.count} great student"
    else
        puts "Overall, we have #{students.count} great students"
    end
end

students = students_input
print_header
cohort(students)
print_students(students)
print_footer(students)