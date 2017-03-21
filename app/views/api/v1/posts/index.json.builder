son.array! @category do |category|

	json.user_category category.user_category
	json.description .description
	json.title category.title
	json.user_id  category.user_id
	json.category category.category
	
end  
