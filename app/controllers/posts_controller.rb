
class PostsController < ApplicationController

	# before_ation :auntheticate_user!


	def create 

	@post = current_user.post.where(status: "Posted")

	category = Category.create(user_id: current_user.id)

	category.update_all(status: "Posted", user_id: user.id)

	post.calculate_totals

	flash[:success] = "Post succesfully created"
	redirect_to "/category/#{category.id}"

	end 


	def show 
		@category = category.find_by(id: params[:id])
		if @category.user_id != current_user.id 
			redirect_to"/"
		end
	end 
end
