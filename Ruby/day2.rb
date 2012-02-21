#!/usr/bin/env ruby


class Person
	attr_accessor :name, :age
	
	def initialize(name, age)
		@name = name
		@age = age
	end
	
	def to_s()
		"#{name}, #{age}"
	end		
end

jonathan = Person.new("Jonathan", 28)
thomas = Person.new("Thomas", 21)

puts jonathan.to_s
puts thomas.name


#
# Start exercises
#

#
# 1
#

numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

count = 0
numbers.each do |it|

	if (count % 4) == 0
		puts "#{numbers[count]} #{numbers[count+1]} #{numbers[count+2]} #{numbers[count+3]}"
	end
	
	count += 1
end

puts ""
#(1..16).each_slice(4) { |it| p it }
numbers.each_slice(4) { |it| p it }



#
# 2
#

puts ""
puts "part 2"
puts ""

require 'tree'

#people = Tree.new("Grandpa", {'dad' => {'child1' => {}}, 'uncle' => {'child2' => {}}})
people = Tree.new({'grandpa' => {'dad' => {'child1' => {},'child2' => {}}, 'uncle' => {'child3' => {}, 'child4' => {}}}})

people.visit_all {|node| puts node.node_name }



#
# part 3
#

puts ""
puts "Part 3"
puts ""

matcher = 'lorem'
puts "Matching #{matcher}"


counter = 1
File.open("lorem.txt", "r") do |inFile|
	while(line = inFile.gets)
		if line.downcase.match(matcher.downcase) #make case insensitive
			puts "#{counter} #{line}"
		end
		counter += 1
	end
end



