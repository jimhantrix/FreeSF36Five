class Category < ApplicationRecord



	has_many :posts

	has_many :user_categories

	has_many :users, through: :user_categories

	validates :category, presence: true 

	  has_attached_file :avatar,
                    :styles => { :medium => "150x150>", :thumb => "60x60#" },
                    :default_url => "/images/:style/missing.png"

  validates_attachment :avatar, :presence => true,
                       :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                       :size => { :in => 0..1000.kilobytes }

	

end
