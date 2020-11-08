# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

User.destroy_all
Category.destroy_all
Product.destroy_all

puts 'Database cleaned.'

puts 'Creating awesome categories...'

category_1 = Category.new( {
  name: "Joaillerie"
})
category_1.save!

category_2 = Category.new( {
  name: "Gravures"
})
category_2.save!

category_3 = Category.new( {
  name: "Dessins Peintures"
})
category_3.save!

puts 'Creating awesome products...'


# ### Category 1

product_1 = Product.new( {
  name: "Stylish Armchair",
  description: "An awesome product in the #{category_1.name} category!",
  category_id: category_1.id
} )
# armchairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
# product_1.image.attach(io: armchairs_pic_1, filename: 'armchairs_pic_1.jpg', content_type: 'image/jpg')
product_1.save!

product_2 = Product.new( {
  name: "Napoleon Style",
  description: "An awesome product in the #{category_1.name} category!",
  category_id: category_1.id
} )
# armchairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
# product_2.image.attach(io: armchairs_pic_2, filename: 'armchairs_pic_2.jpg', content_type: 'image/jpg')
product_2.save!

product_3 = Product.new( {
  name: "Big Fudge",
  description: "An awesome product in the #{category_1.name} category!",
  category_id: category_1.id
} )
# armchairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
# product_3.image.attach(io: armchairs_pic_3, filename: 'armchairs_pic_3.jpg', content_type: 'image/jpg')
product_3.save!

product_4 = Product.new( {
  name: "Rocking Chair",
  description: "An awesome product in the #{category_1.name} category!",
  category_id: category_1.id
} )
# armchairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
# product_4.image.attach(io: armchairs_pic_4, filename: 'armchairs_pic_4.jpg', content_type: 'image/jpg')
product_4.save!


# ### Category 2

product_5 = Product.new( {
  name: "Outdoor Bench",
  description: "An awesome product in the #{category_2.name} category!",
  category_id: category_2.id
} )
# benches_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_5.image.attach(io: benches_pic_1, filename: 'benches_pic_1.jpg', content_type: 'image/jpg')
product_5.save!

product_6 = Product.new( {
  name: "Kitchen Bench",
  description: "An awesome product in the #{category_2.name} category!",
  category_id: category_2.id
} )
# benches_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_6.image.attach(io: benches_pic_2, filename: 'benches_pic_2.jpg', content_type: 'image/jpg')
product_6.save!

product_7 = Product.new( {
  name: "Entry Bench",
  description: "An awesome product in the #{category_2.name} category!",
  category_id: category_2.id
} )
# benches_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_7.image.attach(io: benches_pic_3, filename: 'benches_pic_3.jpg', content_type: 'image/jpg')
product_7.save!

product_8 = Product.new( {
  name: "Bench with Storage",
  description: "An awesome product in the #{category_2.name} category!",
  category_id: category_2.id
} )
# benches_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_8.image.attach(io: benches_pic_4, filename: 'benches_pic_4.jpg', content_type: 'image/jpg')
product_8.save!


# ### Category 3

product_9 = Product.new( {
  name: "Kitchen Chair",
  description: "An awesome product in the #{category_3.name} category!",
  category_id: category_3.id
} )
# chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
# product_9.image.attach(io: chairs_pic_1, filename: 'chairs_pic_1.jpg', content_type: 'image/jpg')
product_9.save!

product_10 = Product.new( {
  name: "Wooden Chair",
  description: "An awesome product in the #{category_3.name} category!",
  category_id: category_3.id
} )
# chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
# product_10.image.attach(io: chairs_pic_2, filename: 'chairs_pic_2.jpg', content_type: 'image/jpg')
product_10.save!

product_11 = Product.new( {
  name: "Metal Chair",
  description: "An awesome product in the #{category_3.name} category!",
  category_id: category_3.id
} )
# chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
# product_11.image.attach(io: chairs_pic_3, filename: 'chairs_pic_3.jpg', content_type: 'image/jpg')
product_11.save!

product_12 = Product.new( {
  name: "Plastic Chair",
  description: "An awesome product in the #{category_3.name} category!",
  category_id: category_3.id
} )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
# product_12.image.attach(io: chairs_pic_4, filename: 'chairs_pic_4.jpg', content_type: 'image/jpg')
product_12.save!

puts " "

puts "DATABASE SUCCESSFULLY SEEDED."

puts " "

puts "Total number of categories: #{Category.all.count}"
puts "Total number of products: #{Product.all.count}"

puts " "

puts "┐(・。・┐) ♪ "

puts " "

puts "( ͡ ͜ ʖ ͡ )"

puts " "

puts "( ͡• ͜ʖ ͡• )"

puts " "

puts "┏(＾0＾)┛┗(＾0＾)┓"

puts " "


