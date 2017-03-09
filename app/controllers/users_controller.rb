class UsersController < ApplicationController

	def new 
	end 

	def create 
		user = User.new(

			first_name: params[:first_name],
			last_name: params[:last_name],
			email: params[:email],
			phone: params[:phone],
			state: params[:state],
			city: params[:city],
			zip_code: params[:zip_code],
			street: params[:street],
			password: params[:password],
			password_confirmation: params[:password_confirmation]
		)
		if user.save 
			session[:user_id] = user.id 
			flash[:success] = "Succefully created account!"
			redirect_to users_path(@user)
		 else 
			flash[:warning] = "Invalid email or password"
			redirect_to "/singup"
		end 
	end 
end
