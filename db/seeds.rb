# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding Users..."
user1 = User.create!(username:"Cow", img_profile:"https://c.files.bbci.co.uk/17444/production/_124800359_gettyimages-817514614.jpg", password:"password",password_confirmation:"password")
user2 = User.create!(username:"Fish", img_profile:"https://www.rd.com/wp-content/uploads/2021/01/GettyImages-1175550351.jpg", password:"password", password_confirmation: "password")
puts "seeding Users finished"
puts "seeding Game"
game1 = Game.create!(name:"aim-game", description:"to aim")
puts "seeding Game finished"
puts "seeding Accuracies"
Accuracy.create!(missed:3, hit:17, total:20, timeba:3, acc_percent:0.85, user_id:user1.id, game_id:game1.id)
Accuracy.create!(missed:1, hit:14, total:15, timeba:4, acc_percent:0.933, user_id:user1.id, game_id:game1.id)
Accuracy.create!(missed:10, hit:15, total:25, timeba:1.5, acc_percent:0.6, user_id:user2.id, game_id:game1.id)
Accuracy.create!(missed:18, hit:10, total:28, timeba:2, acc_percent:0.357, user_id:user2.id, game_id:game1.id)
puts "seeding Accuracies finished"