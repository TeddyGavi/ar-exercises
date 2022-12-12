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

testOne = Store.new
testOne.name = 'testOne'
testOne.annual_revenue = 0
testOne.mens_apparel = true
testOne.womens_apparel = true

testTwo = Store.new
testTwo.name = 'Hi'
testTwo.annual_revenue = 3000000000
testTwo.mens_apparel = true
testTwo.womens_apparel = true

puts testOne.valid?
puts testTwo.valid?