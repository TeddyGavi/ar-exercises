require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find(1)
@store2 = Store.find(2)
@store3 = Store.find(3)
puts @store1.name
@store1.update(name: 'Metrotown')
puts @store1.name