Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	# User's routes 
	root :to => "users#index"

	get "/users" => "users#index", as: "users"

	#checked 
	get "/signup" => "users#new", as: "new_user"
	get "/edit" => "users#edit"





	post "/users" => "users#create"
	get "/users/:id" => "users#show", as: "user"


	#session routes 
	get "/login" => "sessions#new"
	
	post "/login" => "sessions#create"
	get "/logout" => "sessions#destroy"

	#category routes 
	get "/categories" => "categories#index"
	get "/categories/:id/edit" => "categories#edit"
	patch "/categories/:id" => "categories#update"
	delete "/categories/:id" => "categories#destroy"
	get "/categories/new" => "categories#new", as:"new_category"
  	post "/categories/:id/users" => "user_categories#create", as: "user_categories"
  	get "/categories/:id" =>"categories#show"


  	#Images routes 
  	get "/images/new" =>"images#new"
  	post "/images" => "images#create"


  	#Posts routes 
  	get "/posts/new" => "posts#new"
  	post "/posts/:id/users" => "users#create" 
end
