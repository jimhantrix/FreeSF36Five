class CategoriesController < ApplicationController


	before_action :aunthenticate_admin!, except:[:index, :show, :search]

	def index 
		if session[:count] == nil 
			session[:count] = 0
		end 
		session[:count] += 1
		@visit_count = session[:count]
		@category= Category.all 
		# if params[:category]
		# 	@categories = Category.find_by(params[:name] params[:category]).categories
		#end 
	end 



	def new 
		
	end 


	def create 
		@category = Category.create(

			name: params[:name],
			user_id: current_user.id,
			status:"Category created"
		)
	 
		if @category.save 
			flash[:success] = "Category Created"
			redirect_to "/category/#{@category.id}"
		else 
			render :new 
		end 
	end 

	def show 

		@category = Category.find_by(id: params[:id])

		@images = category.images
	end

	def edit 

		@category = Category.find_by(id: params[:id])
		#status: "Category succesfully edited"
	end 

	def update 

			@category = Category.find_by(id: params[:id])
			@category.update(
				name: params[:name],

			)
		if @category.save 
		 flash[:success] = "Category Updated"
		 redirect_to "/category/#{@category}"
		 else 

		 render :edit
		end 
	end 

	def destroy 

		@category = Category.find_by(id: params[:id])
		@category.destroy

		flash[:warning] = "Category deleted"
		redirect_to "/"
		
	end 

	def search 

	end  
end
