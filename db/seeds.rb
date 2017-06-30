# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
Review.destroy_all


3.times do |i|
  someProduct = Product.create!(name: Faker::Book.author )
  3.times do |j|
    someReview = someProduct.reviews.create!(title: Faker::Book.title )
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"


# Database
#   Products have Reviews
#   Product
#     name, cost, country of origin
#   Review
#      author, content_body, rating
