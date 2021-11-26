require 'colorize'

#START with group in memory
group = ["Alice", "Bob", "Charlie"]

#BASIC MENU SYSTEM
while true 
    puts "Pick 1) for Random Student, Pick 2) for Random Group, Pick 3) to exit"
    input = gets.chomp.to_i
    case input 
    when 1 
        puts "Selected Random Student option".colorize(:blue)
    when 2
        puts "Selected Random Group option".colorize(:green)
    when 3
        puts "Goodbye".colorize(:yellow)
        exit
    else
        puts "Please pick 1, 2, or 3".colorize(:red)
    end 

end 
