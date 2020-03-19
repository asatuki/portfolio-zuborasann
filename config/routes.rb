Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "users/top#index"
  get '/about/', to: 'users/top#about'

  resources :recipes do
        resource :favorites, only: [:create, :destroy]
        resource :post_messages, only: [:create, :destroy]
  end
end
