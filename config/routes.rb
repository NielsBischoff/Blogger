Rails.application.routes.draw do

 	root to: 'articles#index'
 	resources :articles
 	
 	#get 'index' => "site#index"
 	resources :articles do
 		resources :comments
	end

	
  
  	
	
end
