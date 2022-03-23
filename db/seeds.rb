# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Destroy Meals
Meal.destroy_all
puts "meals destroyed"
# Create Meals
meal_names = ["Big Mac", "Chicken Burger", "Cheeseburger", "Potatoes", "French fries", "Coca", "Ice tea", "Best of big Mac", "Happy meal"]
meal_prices = [7.99, 6.99, 4.99, 2.99, 2.99, 2.99, 2.99, 10.99, 8.99]
meal_descriptions = ["Famous double ration beef burger", "For the chicken lovers, with a tasty sauce", "Original burger with emmental cheese, for the small appetite", "The best alternative you can find to french fries", "A classic, crispy, salty and tasty", "50 cl fresh coke", "50 cl fresh ice tea", "A manu with Big Mac, french fries and a drink", "Best menu for the kids, including a toy"]

n = meal_names.count - 1
(0..n).to_a.each do |index|
  Meal.create!(name: meal_names[index], price: meal_prices[index], description: meal_descriptions[index])
end
puts "meals created"

# Destroy Customers
Customer.destroy_all
puts "customers destroyed"
# Create Customers
customer_names = ["John Doe", "Javier Bardem", "Alyssa Milano"]
customer_addresses = ["54 rue de la Benauge", "35 Times Square", "123 Picaddily Circus"]

n = customer_names.count - 1
(0..n).to_a.each do |index|
  Customer.create!(name: customer_names[index], address: customer_addresses[index])
end
puts "customers created"

# Destroy Employees
Employee.destroy_all
puts "employees destroyed"
# Create Employees
employee_names = ["Eric", "Nicolas", "Michel"]
employee_titles = ["Manager", "Rider", "Rider"]

n = employee_names.count - 1
(0..n).to_a.each do |index|
  Employee.create!(name: employee_names[index], title: employee_titles[index])
end
puts "employees created"
