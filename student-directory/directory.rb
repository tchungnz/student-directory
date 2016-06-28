@students =[]

def interactive_menu
    loop do
        print_menu    
        process(gets.chomp)
    end
end

def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "4. Load the list from students.csv"
    puts "9. Exit"
end

def show_student
    print_header
    cohort
    print_students
    print_footer
end

def process(selection)
    case selection
    when "1"
    students_input
    when "2"
    show_student
    when "3"
    save_students
    when "4"
    load_students
    when "9"
    exit
    else
    puts "I don't understand what you meant, try again!"
    end
end
    
def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def name_input
    puts "Please enter the name of the student:"
    @name = gets.delete "\n"
end

def cohort_input
    puts "Please enter the cohort of the student:"
    @cohort = gets.chomp
    if @cohort == ""
        @cohort = "November"
    end
end

def students_input
name_input
cohort_input
    while !@name.empty? do
        @students << {name: @name, cohort: @cohort.to_sym}
        if @students.length == 1
            puts "Now we have #{@students.count} student"
        else puts "Now we have #{@students.count} students"
        end
        name_input
        cohort_input
    end
end

def cohort
    @cohort_list = []
    @students.each do |student|
        if !@cohort_list.include? student[:cohort]
            @cohort_list << student[:cohort]
        end
    end
end

def print_students
    @cohort_list.each do |month|
        puts "Cohort #{month}:"
        @students.each do |student|
            if student[:cohort] == month
                puts "#{student[:name]}"
            end
        end
    end
end

def print_footer
    if @students.size == 1
    puts "Overall, we have #{@students.count} great student"
    else
        puts "Overall, we have #{@students.count} great students"
    end
end

def save_students
    file = File.open("students.csv", "w")
    @students.each do |student|
        student_data = [student[:name], student[:cohort]]
        csv_line = student_data.join(",")
        file.puts csv_line
    end
    file.close
end

def load_students
    file = File.open("students.csv", "r")
    file.readlines.each do |line|
        name, cohort = line.chomp.split(",")
        @students << {name: name, cohort: cohort.to_sym}
    end
    file.close
end


interactive_menu