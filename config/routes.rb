Rails.application.routes.draw do

  devise_for :admins, controllers: {
    registrations: "admins/registrations",
    sessions: "admins/sessions"
  }

  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "users/top#index"
  get '/rank/', to: 'users/top#rank'

  get "/admins", to: "admins/top#index", :as => :admins_top

  get "/search", to: "search#index", :as => :search

  resources :recipes do
        resource :favorites, only: [:create, :destroy]
        resources :post_messages, only: [:create, :destroy]
  end
end
