require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"
@store4 = Store.find(4)
@store5 = Store.find(5)
@store6 = Store.find(6)

# Your code goes here ...
@store1.employees.create(first_name: 'John', last_name: 'Bob', hourly_rate: 60)
@store1.employees.create(first_name: 'Jane', last_name: 'Bibity', hourly_rate: 40)
@store2.employees.create(first_name: 'Lisa', last_name: 'Downey', hourly_rate: 80)
@store2.employees.create(first_name: 'Billy', last_name: 'Lilly', hourly_rate: 50)
@store4.employees.create(first_name: 'Usain', last_name: 'Bolt', hourly_rate: 90)
@store6.employees.create(first_name: 'Wayne', last_name: 'Gretzky', hourly_rate: 100)