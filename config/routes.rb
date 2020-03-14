Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "users/top#index"
  get '/about/', to: 'users/top#about'


  get "recipes/", to: "recipes#index"
  get "recipes/new", to: "recipes#new", :as => :recipe_new
  get "recipes/:id", to: "recipes#show", :as => :recipe_show
  get "recipes/:id/edit", to: "recipes#edit", :as => :recipe_edit
  patch "recipes/:id", to: "recipes#update", :as => :recipe_update
  post "recipes/", to: "recipes#create", :as => :recipe_create
  delete "recipes/:id", to: "recipes#destroy", :as => :recipe_destroy
end
