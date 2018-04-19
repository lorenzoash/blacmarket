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
        image: File.new(File.join(Rails.root, "public", "seedimages", "yeezyrunner.jpg")),
        
    }, 
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "Nike_Vapors.jpg")),
    },
    {
        content: "The Air Jordan III (3) is Michael Jordan’s third signature basketball shoe. 
        It released in 1988 in four colorways of white, black, red, and blue. It was the first 
        Air Jordan to feature visible Air, elephant print, and the Jumpman logo. The shoe was 
        Tinker Hatfield’s first design for MJ and it remains as one of the most sought after basketball sneakers to date.", 
        likes: 9, 
        price: 300.00, 
        title: "Jordan Retro 3",
        image: File.new(File.join(Rails.root, "public", "seedimages", "Jordan_3.jpg")),
    },
    {
        content: "The Nike Air More Uptempo is a popular basketball sneaker that debuted in 1996.
         The “AIR” lettering draws inspiration from oversized objects from ’90’s graffiti and pop art. 
         It was designed by Wilson Smith and made famous by Scottie Pippen in the late '90s.", 
        likes: 9, 
        price: 160.00, 
        title: "Air Uptempo",
        image: File.new(File.join(Rails.root, "public", "seedimages", "AirTempo.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 200.00, 
        title: "Air Max 98",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803758_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803752_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803719_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803718_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803604_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803599_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803595_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803590_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803586_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803566_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803517_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "803168_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "801820_1_2.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "801781_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "800502_01.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "201444_1.jpg")),
    },
    {
        content: "With a flexible Flyknit upper placed directly atop a radically reinvented Air
        cushioning system Nike Air VaporMax not only defies convention,
        it delivers a sensation underfoot that seems to defy gravity.", 
        likes: 9, 
        price: 215.00, 
        title: "Air Vapormax Flyknit 2",
        image: File.new(File.join(Rails.root, "public", "seedimages", "201484_1.jpg")),
    },
])

User.first.orders << Order.new({ paid: false, subtotal: 125.99, total: 100.00, tax: 12.25 })