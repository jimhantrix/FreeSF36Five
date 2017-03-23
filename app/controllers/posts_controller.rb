
class PostsController < ApplicationController

	 # before_ation :auntheticate_user! 




	 # index method 

	def index 
	 	@post = Post.all

	end 





	# new post method 

	def new 
	 	@post = Post.new
	end 




	#create method 
	def create


	 	post = Post.create(
	 		title: params[:title],
	 		description: params[:description],
	 		category_id: params[:category_id],
	 		user_id: current_user.id 
	 	)

	 	flash[:success] = "post successfully created!"
	 	redirect_to "/posts/#{post.id}"
	end




	# edit method 

	def update 

	 	@post = Post.find_by(id: params[:id]) 
	 	@post.update(
	 		title: params[:title],
	 		category_id: params[:category_id],
	 		description: params[:description],
	 		user_id: current_user.id 
	 	)
	end 




	#show method 

	def show 
	 	@post = Post.find_by(id: params[:id])
	end 



	#delete method 
	def destroy 

	 	post = Post.find_by(id: params[:id])

	 	post.update(status: "Post removed")

	 	flash[:success] = "Post removed"

	 	redirect_to "/"
	end




	def edit
		@post = Post.find_by(id: params[:id])
	end

end
