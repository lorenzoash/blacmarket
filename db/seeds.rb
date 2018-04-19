# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Item.destroy_all

User.create({ name: "Lorenzo", email: "email@email.com", location: "Los Angeles, CA", password: "123abc"})

Item.create([
    {
        content: "Lorem ipsum", 
        likes: 6, 
        price: 120.99,
        title: "Shoes"
    }, 
    {
        content: "Vivamus nibh ipsum, malesuada nec pretium vel, tempus a lorem", 
        likes: 9, 
        price: 5.00, 
        title: "Poo Sauce"
    }
])

# User.first.orders << Order.new({ paid: false, subtotal: 125.99, total: 100.00, tax: 12.25 })