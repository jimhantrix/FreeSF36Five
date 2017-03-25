
class PostsController < ApplicationController

	 # before_ation :auntheticate_user! 

	  #before_action :authenticate_admin!, except: [:index, :show, :search]




	 # index method 

	def index 

		# find an array of all posts with a cetegory id that matches the url parameters
		@posts = Post.where(category_id: params[:category_id])

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
	 		
	 	)

	 	flash[:success] = "post successfully created!"
	 	redirect_to "/posts/#{post.id}"
	end




	# edit method 

	def update 

	 	@post = Post.find_by(id: params[:id]) 
	 	@post.update(

	 		category_id: params[:category_id],

	 		title: params[:title],
	 		
	 		description: params[:description]	
	 	)
	end 




	#show method 

	def show 
	 	@post = Post.find_by(id: params[:id])
	 	@category = @post.category_id
	end 



	#delete method 
	def destroy 

	 	post = Post.find_by(id: params[:id])

	 	post.update(status: "Post removed")

	 	flash[:success] = "Post removed"

	 	redirect_to "/categories/index"
	end




	def edit
		@post = Post.find_by(id: params[:id])
	end

	def search
    search_term = params[:search]
    #ping database to find recipes that are similar to search term
    @posts = Post.where("title LIKE ?", "%#{search_term}%")
    render :index
  end


end
