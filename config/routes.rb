Rails.application.routes.draw do

  
# namespace :api do 
# 	namespace :v1 do 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    # 
	root :to => "categories#index"

	resources :users
	# get "/users" => "users#index", as: "users"

	# get "/signup" => "users#new", as: "new_user"

	# get "/edit" => "users#edit"

	# patch "/user/:id" => "users#update"

	# post "/users" => "users#create"

	# get "/users/:id" => "users#show", as: "user"




	
	
	get "/login" => "sessions#new"

	

	post "/sessions" => "sessions#create"

	get "/logout" => "sessions#destroy"



	#category routes
	resources :categories 
	# get "/" => "categories#index"

	 # get "/categories" => "categories#index"

	# get "/categories/:id/edit" => "categories#edit"

	# patch "/categories/:id" => "categories#update"

	# delete "/categories/:id" => "categories#destroy"

	# get "/categories/new" => "categories#new", as:"new_category"

 #  	post "/categories" => "categories#create", as: "user_categories"



	

  	#Images routes 
  	resources :images
  	# get "/images/new" =>"images#new"

  	# post "/images" => "images#create"


  	#Posts routes 
  	resources :posts
  	# get "/posts/:id" => "posts#show"

  	# get "/posts/new" => "posts#new"

  	# get "/posts" => "posts#new"
  	
  	# post "/posts/:id/users" => "users#create" 

# end 

# end 

end
