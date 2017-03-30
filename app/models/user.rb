class User < ApplicationRecord

	has_secure_password 

	has_many :images 
		
	has_many :posts

	has_many :user_categories

	has_many :categories, through: :user_categories

	
	has_attached_file :avatar,
                    :styles => { :medium => "200x2000>", :thumb => "90x90#" },
                    :default_url => "/images/:style/missing.png"

  validates_attachment :avatar, :presence => true,
                       :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                       :size => { :in => 0..1000.kilobytes }

	 # validates :name, presence: true
	 # validates  :name, uniqueness: true
 

end 

