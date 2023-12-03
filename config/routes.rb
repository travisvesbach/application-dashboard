Rails.application.routes.draw do
  devise_for :users

  resources :user_applications, only: [:index, :update, :destroy]
  resources :bulk_user_applications, only: [:create]

  root "user_applications#index"
end
