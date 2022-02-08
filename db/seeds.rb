# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
5.times do
  Category.create!(
    title: Faker::Commerce.department(max: 1, fixed_amount: true))
end

5.times do
  Product.create!(
    title: Faker::Commerce.product_name,
   category_id: 1 ,
    image: "https://www.jcount.com/wp-content/uploads/2017/12/products.png?6bfec1&6bfec1",
    price: 2
  )
end
5.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    category_id: 2 ,
    image: "https://www.jcount.com/wp-content/uploads/2017/12/products.png?6bfec1&6bfec1",
    price: 3
    )
end
5.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    category_id: 3,
    image: "https://www.jcount.com/wp-content/uploads/2017/12/products.png?6bfec1&6bfec1",
    price: 15
    )

end
5.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    category_id: 4,
    image: "https://www.jcount.com/wp-content/uploads/2017/12/products.png?6bfec1&6bfec1",
    price: 150
    )
end
5.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    category_id: 5,
    image: "https://www.jcount.com/wp-content/uploads/2017/12/products.png?6bfec1&6bfec1",
    price: 200
    )
end