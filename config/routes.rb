Rails.application.routes.draw do
  devise_for :users

  resources :user_applications, only: [:index, :new, :create, :update]

  root "user_applications#index"
end
