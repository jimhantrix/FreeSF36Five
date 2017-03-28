class User < ApplicationRecord

	has_secure_password 

	has_many :images 
		
	has_many :posts

	has_many :user_categories

	has_many :categories, through: :user_categories

	 # validates :name, presence: true
	 # validates  :name, uniqueness: true
 

end 

