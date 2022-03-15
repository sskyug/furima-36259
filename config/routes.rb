Rails.application.routes.draw do

   devise_for :users
   root to: "items#index"
   resources :items, only: [:new, :create] do
      resources :users, only: [:create]
   end
  end
