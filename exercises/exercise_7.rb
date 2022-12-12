require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts @store2.employees.create(first_name: 'John', hourly_rate: 70).valid?
puts @store6.employees.create(first_name: "Bidy", last_name: "Son", hourly_rate: 80).valid?
puts @store4.employees.create(first_name: "Jones", last_name: "Walker", hourly_rate: 20).valid?
puts @store4.employees.create(first_name: "Jones", last_name: "Walker", hourly_rate: 300).valid?