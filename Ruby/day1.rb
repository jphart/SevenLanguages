#!/usr/bin/env ruby

puts "Hello World"

"hello , ruby".index("ruby")

(1..10).each { puts "Jonathan" }

(1..10).each { |it| puts "This is sentence number #{it}" }



# Guess the number

puts "Guess the number!"

number = rand(10) + 1

found = false
until found

    puts "Guess>"
    guess = gets.chomp
    
    if guess.to_i == number
        puts "Found it!"
        found = true
    elsif guess.to_i > number
        puts "Lower"
    else
        puts "Higher"
    end
end
