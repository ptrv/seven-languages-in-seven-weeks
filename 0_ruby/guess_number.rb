#!/usr/bin/env ruby

run = true
max_num = 10
magic_number = rand(max_num)

puts "guess a number in the range of 0 to #{max_num}"
while run
    user_input = gets.to_i
    if user_input == magic_number
        run = false
        puts "Boom Chakka! The magic number is #{magic_number}"
    elsif user_input < magic_number
        puts "Your guess is too low"
    elsif user_input > magic_number
        puts "Your guess is too high"
    end
end
