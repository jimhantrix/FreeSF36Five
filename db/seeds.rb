
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


	post = Post.create(

		category_id: "1",
		title: "Books",
		description: "Free novels and reference books",
		user_id: "1",
		avatar_file_name: "",
		avatar_content_type: "",
		
	)


	post = Post.create(

		category_id: "1",
		title: "Free couch",
		description: "free brown leather couch",
		user_id: "2",
		avatar_file_name:""
				
	)


	post = Post.create(

		category_id: "2",
		title: "Drilling machines",
		description: "Full size workshop drill",
		user_id: "3",
		avatar_file_name: ""
		
		
	)


	post = Post.create(

		category_id: "3",
		title:"Clothes",
		description:"Mens clothes",
		user_id: "3",
		avatar_file_name:""
				
	)


	post = Post.create(

		category_id: "3",
		title: "Hangers",
		description:"50 hangers",
		user_id: "3",
		avatar_file_name:""
				
	)


	post = Post.create(

		category_id:"5",
		title:"Lp's",
		description: "80's Lps",
		user_id: "4",
		avatar_file_name: ""
		
		
	)



	post = Post.create(

		category_id: "1",
		title:"Dinning Table",
		description: "Dinning Table with seats ",
		user_id: "5",
		avatar_file_name: ""
		
		

	)


	post = Post.create(

		category_id: "5",
		title: "Tv ",
		description: "LG plasma tv",
		user_id:"5",
		avatar_file_name: ""
		
		

	)


	post = Post.create(

		category_id: "6", 
		title: "Speakers",
		description: "Speakers in Good condition",
		user_id: "9",
		avatar_file_name:""
				
	)


	post = Post.create(

		category_id: "6", 
		title: "Cushions",
		description: "Cushions in good condition",
		user_id: "10",
		avatar_file_name:""
				
	)



	












puts "Done!"








