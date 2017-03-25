Rails.application.routes.draw do

  
# namespace :api do 
# 	namespace :v1 do 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    
	root :to => "categories#index"



	#Users
	resources :users
	get "/signup" => "users#new"




	#Sessions routes 
	
	get "/sessions/new" => "sessions#new"

	post "/sessions" => "sessions#create"

	get "/logout" => "sessions#destroy"

	post "/login" => "sessions#new"


	


	#Category routes
	resources :categories

	 
	
 	get "/categories/posts/:category_id" => "posts#index"

	

  	#Images routes 
  	resources :images
  	

  	#Posts routes 
  	resources :posts

  	


end
