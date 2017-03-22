
class PostsController < ApplicationController

	 # before_ation :auntheticate_user! 

	def index 
	 	@post = Post.all

	end 


	def new 
	 	@post = Post.new

	end 



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






	def update 

	 	@post = Post.find_by(id: params[:id]) 
	 	@post.update(
	 		title: params[:title],
	 		description: params[:description],
	 		user_id: current_user.id 

	 		)
	 	puts "*****************"
	 	puts @post.errors.full_messages
	 	# if @post.save 
	 	# 	flash[:success] = "Post Updated"
	 	# 	redirect_to "/post/#{@post}"
	 	# else 

	 	# 	redirect_to "/categories"
	 	# end 
	end 



	def show 
	 	@post = Post.find_by(id: params[:id])
	end 


	def destroy 

	 	post = Post.find_by(id: params[:id])

	 	post.update(status: "Post removed")

	 	flash[:success] = "Post removed"

	 	redirect_to "/new"
	end

	def edit
		@post = Post.find_by(id: params[:id])
	end

end
