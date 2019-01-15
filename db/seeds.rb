# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

course = Course.find_or_create_by(name: 'Entrees')
Dish.find_or_create_by(price: '200.00', name: 'Masala Dosa', description: 'Masala Dosa', course: course)
Dish.find_or_create_by(price: '100.00', name: 'Paneer Kalyani', description: 'Paneer Kalyani', course: course)
Dish.find_or_create_by(price: '100.00', name: 'Shahi Paneer', description: 'Shahi Paneer', course: course)
Dish.find_or_create_by(price: '200.00', name: 'Veg Noodles with Manchurian', description: 'Veg Noodles with Manchurian', course: course)
course = Course.find_or_create_by(name: 'South Indian')
Dish.find_or_create_by(price: '85.00', name: 'Sambar Vada', description: 'Sambar Vada', course: course)
Dish.find_or_create_by(price: '85.00', name: 'Idli Sambar', description: 'Idli Sambar', course: course)
Dish.find_or_create_by(price: '89.00', name: 'Schezwan Idli', description: 'Schezwan Idli', course: course)
course = Course.find_or_create_by(name: 'Quick Bites')
Dish.find_or_create_by(price: '30.00', name: 'Aloo Samosa', description: 'Aloo Samosa', course: course)
Dish.find_or_create_by(price: '180.00', name: 'Plain Dhokla', description: 'Plain Dhokla', course: course)
Dish.find_or_create_by(price: '50.00', name: 'Pyaaz Kachori', description: 'Pyaaz Kachori', course: course)
course = Course.find_or_create_by(name: 'Chinese')
Dish.find_or_create_by(price: '60.00', name: 'Hot And Sour Soup', description: 'Hot And Sour Soup', course: course)
Dish.find_or_create_by(price: '70.00', name: 'Veg Manchurian Dry', description: 'Veg Manchurian Dry', course: course)
Dish.find_or_create_by(price: '80.00', name: 'Chilli Garlic Noodles', description: 'Chilli Garlic Noodles', course: course)
course = Course.find_or_create_by(name: 'Continental')
Dish.find_or_create_by(price: '200.00', name: 'Pizza', description: 'Pizza', course: course)
Dish.find_or_create_by(price: '80.00', name: 'Pasta', description: 'Pasta', course: course)
Dish.find_or_create_by(price: '120.00', name: 'Sandwiches', description: 'Sandwiches', course: course)
course = Course.find_or_create_by(name: 'Desserts')
Dish.find_or_create_by(price: '50.00', name: 'Rasmalai', description: 'Rasmalai', course: course)
Dish.find_or_create_by(price: '60.00', name: 'Raj Bhog', description: 'Raj Bhog', course: course)
Dish.find_or_create_by(price: '50.00', name: 'Gulab Jamun', description: 'Gulab Jamun', course: course)
course = Course.find_or_create_by(name: 'Beverages')
Dish.find_or_create_by(price: '110.00', name: 'Butterscotch Shake', description: 'Butterscotch Shake', course: course)
Dish.find_or_create_by(price: '120.00', name: 'Chocolate Shake', description: 'Chocolate Shake', course: course)
