require 'ffaker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Product.destroy_all
Category.destroy_all
Review.destroy_all
#Admin
admin = User.create!(
  email:      'fabulous@admin.zoo', 
  firstname:  'Fabulous', 
  lastname:   'Giraffe', 
  password:   'fabulizer',
  admin: true,
)
category = Category.create! name: 'Food'
5.times do
  product = category.products.create!(
    price: 10.11,
    title: Faker::Product.product_name,
    description: 'Fabulous description',
  )
  5.times do 
    product.reviews.create!(
      content: Faker::Lorem.paragraph,
      rating: rand(1..5),
      user: admin,
    )
  end
end
5.times do |n|
  user = User.create!(
    email:      "fabulous@user-#{n}.zoo",
    firstname:  'Fabulous', 
    lastname:   "Ferret-#{n}", 
    password:   'fabulizer',
  )
end
