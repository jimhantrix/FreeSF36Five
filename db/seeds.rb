
	Category.destroy_all
	User.destroy_all
	Post.destroy_all

	10.times do 
		User.create!(
		:first_name => Faker::Name.first_name,
		:last_name => Faker::Name.last_name,
		:email => Faker::Internet.email,
		:phone => Faker::Number.number(10),
		:state => Faker::Address.state,
		:city => Faker::Address.city,
		:zip_code => Faker::Address.zip_code,
		:password => "123"
		
		)	
	end


	categories = ["Home", "Tools", "Clothing", "Entertainment", "Hobbies", "Electronics"]

	images =["Home.png", "Tools.png", "Clothing.jpg", "Entertainment.jpg", "Hobbies.png", "electronic.png"]


	categories.each_with_index do |category,i|

		Category.create(
			category: category,
			avatar: File.new("#{Rails.root}/app/assets/images/#{images[i]}")
			)

	end 



    100.times do 


     Posts.create(
        description: Faker::Internet.email,
        title: Faker::Internen.password,
        user_categories: Faker::Name.first_name,
        user_id: Faker::Name.last_name
        category_id: Faker::Name.last_name
        user_id: Faker::Name.last_name
        avatar_file_name: Faker::Internen.password,
        avatar_content_type: Faker::Name.first_name,
        avatar_file_size: Faker::Name.last_name
      ) 

end 


	












puts "Done!"








