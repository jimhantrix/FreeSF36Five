class Category < ApplicationRecord

	has_many :posts

	has_many :user_categories

	has_many :users, through: :user_categories

	validates :category, presence: true 
end
