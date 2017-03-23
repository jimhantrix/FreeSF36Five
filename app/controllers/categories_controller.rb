class CategoriesController < ApplicationController

	# before_action :aunthenticate_admin!


	#  before_action :aunthenticate_admin!, except:[:index, :show, :search]



	#index method 

	def index 

		@categories = Category.all 

	end 





	#new method 

	def new 

		@category = Category.new
		
	end 





	# create method 

	def create 


		@category = Category.create(

			category: params[:category],
			user_id: current_user.id,
			status:"Category created"
		)
	 
		if @category.save 
			flash[:success] = "Category Created"
			redirect_to "/"
		else 

			render :new 
		end 
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
		 redirect_to "/category/#{@categorys}"
		 
		 else 


		 	render	:edit 
		end 
	end 






	# delete method 

	def destroy 

		@category = Category.find_by(category_id: params[:id])
		@category.destroy

		flash[:warning] = "Category deleted"
		redirect_to "/"
		
	end 






	# search method 
	def search 

		@category = Category.find_by()

	end  


	
end
