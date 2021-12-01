require 'colorize'
require_relative './methods.rb'

#START with group in memory
test_group = [
    "Anup",
    "Donald",
    "Eric",
    "Eman",
    "Jane",
    "Joshua",
    "Jungah",
    "Kim",
    "Kyle",
    "Nora",
    "Raymond",
    "Xinyi",
    "Elizabeth",
    "Sushma",
    "Mohammad A",
    "Mohammad I",
    "Willem",
    "Dylan",
    "Ashley",
    "Krish",
    "Lance",
    "Elizabeth",
    "Masood",
    "James",
    "Cait",
    "Daisy",
    "Yun",
    "Geoff",
    "Morgan",
    "Chris",
    "Jesse",
    "Feng",
    "Nga",
    "Jacqui",
    "Vittorio",
    "Zach"
  ]

#BASIC MENU SYSTEM
while true 
    puts "Pick 1) for Random Student, Pick 2) for Random Group, Pick 3) to exit"
    input = gets.chomp.to_i
    case input 
    when 1 
        puts "Selected Random Student option".colorize(:blue)
        random_student = pick_random(test_group)
        puts "Selected: #{random_student}"
    when 2
        puts "Selected Random Group option".colorize(:green)
        radomised_group = randomise_group(test_group)
        output_group(radomised_group)
    when 3
        puts "Goodbye".colorize(:yellow)
        exit
    else
        puts "Please pick 1, 2, or 3".colorize(:red)
    end 

end 
