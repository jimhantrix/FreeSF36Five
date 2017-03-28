class Post < ApplicationRecord



	belongs_to :user
	belongs_to :category
	has_many :images

	has_attached_file :avatar,
                    :styles => { :medium => "150x150>", :thumb => "70x70#" },
                    :default_url => "/images/:style/missing.png"

  validates_attachment :avatar, :presence => true,
                       :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                       :size => { :in => 0..1000.kilobytes }

	
end
