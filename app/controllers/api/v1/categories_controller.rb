class Api::V1::CategoriesController < ApplicationController

	def index
    @categories = Categories.all
    render "index.json.jbuilder"
  end



	def show 

		@category = Category.find(id: params[:id])
		render 'show.json.jbuilder'
	end 

end 

	