json.array! @post do |post|

	json.user_id post.user_id
	json.description .description
	json.title post.title
	json.user_categories  post.user_categories
	json.post post.post
	
end  
