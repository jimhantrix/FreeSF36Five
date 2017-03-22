






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




	categories = ["Home", "Entertainment", "Tools", "Clothing", "Entertainment", "Hobbies", "Classified"]

	count = 0

	categories.each do |category|

		 category[count]
		count += 1
	end 

	puts categories



	# 10.times do 
	# 	Post.create!(

	# 		:title Faker:: 

	# 		:description Faker::


	# 		)




	












puts "Done!"








