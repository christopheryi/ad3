Rails.application.routes.draw do

  get 'products/index'

  get 'users/new'

  devise_for :users
   root to: "users#homepage"
   resources :welcome
   resources :products
   resources :blogs
   get '/about' => 'welcome#about'
   get '/homepage' => 'users#homepage'
end
