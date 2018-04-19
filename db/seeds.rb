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
        content: "The YEEZY Runner aka the YEEZY Calabasas Runner is the unofficial name of a new sneaker 
        designed by Kanye West. 
        It is unlike the Yeezy Boost models in that the shoe has a much more technical design and is loosely 
        inspired by the adidas Osweego line of the 1990s. The Yeezy Runner was officially unveiled as part of the 
        Yeezy Season 5 show on February 15th, 2017.", 
        likes: 6, 
        price: 420.99,
        title: "Yeezy Runner 700",
        image: File.new(File.join(Rails.root, “public”, “seedimages”, “yeezyrunner.jpg”)),
        
    }, 
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2"
        image: File.new(File.join(Rails.root, “public”, “seedimages”, “Nike_Vapors.jpg”)),
    }
])

User.first.orders << Order.new({ paid: false, subtotal: 125.99, total: 100.00, tax: 12.25 })