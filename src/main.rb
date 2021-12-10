require 'colorize'
require_relative './methods.rb'
require_relative './classes/group.rb'

if ARGV.length > 0 
    flag, *rest = ARGV 
    ARGV.clear
    case flag
    when '-help'
        puts "Check the readme"
        exit
    when '-info'
        puts "Written by FX2021-02"
        exit
    when '-path'
        group = Group.new(rest[1] ||= "Default Group", rest[0])
    else 
     puts "Invalid argument, please check documentation"
     exit 
    end
end  

    group ||= Group.new("Test Group", "./data/melb-fx1.txt")

group_length = group.names_array.length
#BASIC MENU SYSTEM
while true
    output_group_length(group.names_array.length)
    puts "Pick 1) for Random Student, Pick 2) for Random Group, Pick 3) to Add a member, Pick 4) to quit"
    input = gets.chomp.to_i
    case input 
    when 1 
        puts "Selected Random Student option".colorize(:blue)
        random_student = group.pick_random_name
        puts "Selected: #{random_student}"
    when 2
        puts "Selected Random Group option".colorize(:green)
        group.output_randomised_group
    when 3
        puts "Type name of member to add:"
        input = gets.chomp
        group.add_name(input)
    when 4
        if group_length != group.names_array.length
           puts "The group has been altered, would you like to save?"
           input = gets.chomp 
           if input.downcase == "yes"
             group.save
             puts "saved group"
           end  
        end
        puts "Goodbye".colorize(:yellow)
        exit
    else
        puts "Please pick 1, 2, or 3".colorize(:red)
    end 

end 
