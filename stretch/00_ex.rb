# auto generate password for eomployees

require_relative '../setup'
require_relative '../exercises/exercise_1'
require_relative '../exercises/exercise_2'
require_relative '../exercises/exercise_3'
require_relative '../exercises/exercise_4'
require_relative '../exercises/exercise_5'
require_relative '../exercises/exercise_6'

puts "STRETCH 1
---------------"

@all_employees = Employee.all

@all_employees.each do |employee| 
  puts "#{employee.first_name} #{employee.password}"
end

=begin 

1st output
John UDKXIXBJ
Jane MQUWREJD
Lisa SLIEGXHT
Billy RHQCKBLN
Usain RELAOQWZ
Wayne TRNGNRBO 

2nd output
John ESCVLWHQ
Jane LKNKRQVS
Lisa GFUJIDKX
Billy JJEFVEIL
Usain KTQZVGNX
Wayne GLAJONWN

=end