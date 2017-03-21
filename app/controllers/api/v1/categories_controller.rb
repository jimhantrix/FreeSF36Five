class Api::V1::CategoriesController < ApplicationController

	def index 

		@categories = Categories.all
		render 'index.json.jbuilder'		 
	end 


	def show 

		@category = Category.find_by(id: params[:id])
		render 'show.json.jbuilder'
	end 

	def create 

		@category = Category.create(
			category: params[:category]
		)

		render 'show.json.jbuilder'
	end 

def update 
		@category = Category.find_by(id: params[:id])
		@category.update(category: params[:category]||@category.category
			
		)

		render 'show.json.jbuilder'
	end 

	def destroy 
		category = Category.find_by(id: params[:id])
		category.destroy
		render json: { message: "category destroyed"}

	end 

end
