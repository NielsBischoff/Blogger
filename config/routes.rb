Rails.application.routes.draw do

 root to: 'articles#index'
 resources :articles
 #get 'index' => "site#index"

end
