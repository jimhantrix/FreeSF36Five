
class PostsController < ApplicationController

	 # before_ation :auntheticate_user! 

	def index 

	 	# if current_user.posts.where(status: "Posted").any?
	 	# 	@post = current_user.post.where(status: "Posted")
	 	# else 

	 	# 	flash[:warning] = "You post failed"
	 	# 	redirect_to "/"
	 	# end 
	end 


	 def new 


	 end 



	 def create
    post = Post.create(
      title: params[:title],
      description: params[:description],
      image: params[:image],      
      user_post: params[:user_category]
    )
    

      
    flash[:success] = "post successfully created!"
    redirect_to "/posts/#{post.id}"
  end

		def update 

				@post = Post.find_by(id: params[:id])
				@post.update(
					category: params[:category]

				)
			if @post.save 
			 flash[:success] = "Post Updated"
			 redirect_to "/post/#{@post}"
			 else 

			 redirect_to "/categories"
			end 
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
	
end
