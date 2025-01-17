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
testOne.womens_apparel = false
testOne.save

testTwo = Store.new
testTwo.name = 'Hi'
testTwo.annual_revenue = 3000000000
testTwo.mens_apparel = true
testTwo.womens_apparel = true
testTwo.save

testThree = Store.new
testThree.name = 'testThree'
testThree.annual_revenue = 3000000
testThree.mens_apparel = false
testThree.womens_apparel = false 
testThree.save

puts "testing"

puts testOne.valid?
puts testOne.errors.full_messages
puts testTwo.valid?
puts testTwo.errors.full_messages
puts testThree.valid?
puts testThree.errors.full_messages

puts "----------"