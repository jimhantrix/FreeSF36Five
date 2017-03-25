class CategoriesController < ApplicationController

	# before_action :aunthenticate_admin!


	#  before_action :aunthenticate_admin!, except:[:index, :show, :search]



	#index method 

	def index 

		@categories = Category.all 

	end 





	#show method 

	def show 

		@category = Category.find_by(id: params[:id])
		
	end



	#edit method 

	def edit 

		@category = Category.find_by(id: params[:id])
	
	end 




	#edit Method 

	def update 

		@category = Category.find_by(id: params[:id])


		@category.update(

		category: params[:category]
		
		)


		if @category.save 

		 flash[:success] = "Category Updated"
		 redirect_to "/category/#{@categories}"
		 
		 else 


		 	render	:edit 
		end 
	end 



	# search method 
	def search 

		@category = Category.find_by()

	end  


	
end
