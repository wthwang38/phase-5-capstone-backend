# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding Users"
user1 = User.create(name:"Cow", image_profile:"https://c.files.bbci.co.uk/17444/production/_124800359_gettyimages-817514614.jpg", password:"password", id:1)
user2 = User.create(name:"Fish", image_profile:"https://www.rd.com/wp-content/uploads/2021/01/GettyImages-1175550351.jpg", password:"password", id:2)