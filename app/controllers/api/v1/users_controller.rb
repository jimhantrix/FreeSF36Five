class Api::V1::UsersController < ApplicationController


	def index 

		@users = User.all
		render 'index.json.jbuilder'		 
	end 


	def show 

		@user = User.find_by(id: params[:id])
		render 'show.json.jbuilder'
	end 

	def create 

		@user = User.create(
			first_name: params[:firstname],
			last_name:  params[:last_name],
			email: params[:email],
			city: params [:city],
			zip_code: params [:zip_code]
		)

		render 'show.json.jbuilder'
	end 


	def update 
		@user = User.find_by(id: params[:id])
		@user.update(first_name: params[:first_name]||@user.first_name,
			last_name: params[:last_name] || @user.last_name,
			city: params[:city] || @user.city,
			zip_code: params[:zip_code] || @user.zip_code,
			street: params [:street] || @user.street,
			phone: params[:phone] || @user.phone
		)

		render 'show.json.jbuilder'
	end 

	def destroy 
		user = User.find_by(id: params[:id])
		user.destroy
		render json: { message: "User destroyed"}

	end 

	
end
