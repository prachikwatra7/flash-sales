# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Prachi", password: "password")
User.create(username: "Palak", password: "password")
User.create(username: "Akhil", password: "password")
User.create(username: "Varun", password: "password")
User.create(username: "Raghav", password: "password")

Item.create(title: "Laptop Deal", description: "Buy Lenovo laptop and get free accessories(Bag + Pendrive)", price: "45,000", discount_price: "23,999", user_id: "2", quantity: "5" )
