# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



100.times do 
	user = User.create(

		first_name: Faker::Name.first_name,

		last_name: Faker::Name.last_name,

		email: "example@gmail.com",

		phone: Faker::PhoneNumber.phone_number,

		street: Faker::Address.street_address,

		city: Faker::Address.city,

		state: Faker::Address.state,

		zip_code: Faker::Address.zip,

		password: "password")
end 


posts = [1,2,3,4,5,6,7,8,9]
posts.each do |x|

	3.times do 
		Post.create!([
			user_id: x,
			description: Faker::Name.prefix,
			title: Faker::title,
			category: Faker::Matz.qoute 
			])
	end 


	2.times do 

		category.create!([
			category: Faker::Commerce.department
			])

	end

	3.times do ([
			url: Faker::Avatar.images
			])
	end
	puts "Done!"
end 









