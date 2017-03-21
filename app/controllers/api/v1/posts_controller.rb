class Api::V1::PostsController < ApplicationController


	def index 

		@posts = Posts.all
		render 'index.json.jbuilder'		 
	end 


	def show 

		@post = Post.find_by(id: params[:id])
		render 'show.json.jbuilder'
	end 

		def create 

		@post = Post.create(
			desription: params[:description],
			title: params[:title],
			user_categories: params[:user_categories],
			user_id: params[:user_id]
		)

		render 'show.json.jbuilder'
	end 

def update 
		@post = Post.find_by(id: params[:id])

		@post.update(title: params [:title]) || @post.title,
		@post.update(description: params[:description]||@post.description,
		@post.update(category: params[:category])

			
		)

		render 'show.json.jbuilder'
	end 

	def destroy 
		post = Post.find_by(id: params[:id])
		post.destroy
		render json: { message: "Post destroyed"}

	end 


end
