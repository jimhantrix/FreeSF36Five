class User < ApplicationRecord

	has_secure_password 
		
	has_many :posts

	has_many :user_categories

	has_many :categories, through: :user_categories 
end
