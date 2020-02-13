# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the DB..."
Category.destroy_all
Nominee.destroy_all
Answer.destroy_all
User.destroy_all
puts "DB cleaned."


puts "Creating the user..."
u1 = User.create!({
  email: "contact@mathilderobert.com",
  prenom: "Mathilde",
  nom: "Robert",
  surnom: "Titilde",
  password: "5656vbui",
  admin: true
})

puts "Creating the categories..."
puts "Creating Meilleur espoir féminin"
c1 = Category.create!({
  title: "Meilleur espoir féminin"
})
photo_c1 = URI.open("https://source.unsplash.com/JiRSy0GfqPA")
c1.photo.attach(io: photo_c1, filename: 'photo_c1.jpg', content_type: 'image/jpg')
c1.save!
