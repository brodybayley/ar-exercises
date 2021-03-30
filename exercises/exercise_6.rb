require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
#Add the following code directly inside the Store model (class)
class Store < ActiveRecord::Base
  has_many :employees
end
#Add the following code directly inside the Employee model (class)
class Employee < ActiveRecord::Base
  belongs_to :store
end
#Add some data into employees
@store1.employees.create(first_name: "Brody", last_name: "Boo", hourly_rate: 100)
@store1.employees.create(first_name: "Melanie", last_name: "Tooo", hourly_rate: 80)
@store1.employees.create(first_name: "Tamara", last_name: "Chav", hourly_rate: 60)
@store2.employees.create(first_name: "Shaungel", last_name: "Rob", hourly_rate: 90)
@store2.employees.create(first_name: "Chris", last_name: "Nel", hourly_rate: 20)
@store2.employees.create(first_name: "Peter", last_name: "Pan", hourly_rate: 50)
@store1.employees.create(first_name: "Helen", last_name: "Yo", hourly_rate: 60)
