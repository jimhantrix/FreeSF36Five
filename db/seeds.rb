# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


names = ['Dummy', 'Crashy', 'Runny', 'Bloody']

	names.each do |name|

		user = User.create(

		first_name: name,

	  	last_name: Faker::Name.last_name,

	  	email: "#{name}@gmail.com",

	  	phone: Faker::PhoneNumber.phone_number,

	  	street: Faker::Address.street_address,

	  	city: Faker::Address.city,

	  	state: Faker::Address.state,

	  	zip_code: Faker::Address.zip,

	  	password: "password")


		
		3.times do
	       post = Post.create(

	      title: Faker::Lorem.sentence,

	      description: Faker::Lorem.paragraph(1),

	      # category: Faker::Commerce.department,

	      user_id: user.id)
		end
	end
	categories = ["Home", "Tools","Entertainment","Clothing & Accesories","Family","Electronics","Hobbies","Vehicles","Classified"]

		categories.each do |category|

    		category = Category.create(
    			
      		name: category
      		)
    	end 


    		# 3.times do 
      # 			user_category = User_category.create(

      # 			names: categories.id, 
      # 			user_id: user.id 
      # 			)
      # 		end 


  # 10.times do
  #   post = Posts.create(
  #     name: Faker::Commerce.department,
  #     sub_category: Faker::Commerce.department,
  #     user_id: user.id
  #   )
  # end 
puts "Done!"