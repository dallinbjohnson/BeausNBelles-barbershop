# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
	email: "sample@gmail.com",
	password: "asdfasdf",
	password_confirmation: "asdfasdf",
	roles: "user"
)

puts "1 regular user created"

User.create!(
	email: "Admin@gmail.com",
	password: "asdfasdf",
	password_confirmation: "asdfasdf",
	roles: "admin"
)

puts "1 Admin user created"

9.times do |image|
	Gallery.create!(
		title: "Image: #{image}",
		image: "http://bizjunky.com/wp-content/uploads/2015/06/shutterstock_262651283.jpg"
	)
end

puts "9 Images created"