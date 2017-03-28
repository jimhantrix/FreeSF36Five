 class UsersController < ApplicationController

	def new

	end 



	def create
		@user = User.create(
			first_name: params[:first_name],
			last_name: params[:last_name],
			email: params[:email],
			phone: params[:phone],
			state: params[:state],
			city: params[:city],
			zip_code: params[:zip_code],
			street: params[:street],
			password: params[:password]
		)
		flash[:success] = "Login"
		redirect_to '/login'
	end

	def avatar


	end 


	

	def update
	    user = User.find_by(id: params[:id])
	    user.update(
	      first_name: params[:first_name],
	      last_name: params[:last_name],
	      email: params[:email],
	      phone: params[:phone],
	      city: params[:city],
	      state: params[:state],
	      zip_code: params[:zip_code],
	      street: params[:street],
	      password: params[:password]
	    )
	    flash[:success] = "Successfully updated!"
	    redirect_to "/"
  end


	def destroy
	    
	end

end











