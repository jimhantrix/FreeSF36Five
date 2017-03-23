
	Category.destroy_all
	User.destroy_all

	10.times do 
		User.create!(
		:first_name => Faker::Name.first_name,
		:last_name => Faker::Name.last_name,
		:email => Faker::Internet.email,
		:phone => Faker::Number.number(10),
		:state => Faker::Address.state,
		:city => Faker::Address.city,
		:zip_code => Faker::Address.zip_code
		
		)	
	end




	categories = ["Home ", "Tools ", "Clothing ", "Entertainment", "Hobbies", "Classified"]


	categories.each do |category|

		Category.create(category: category)

	end 

	puts categories



	
	












puts "Done!"








