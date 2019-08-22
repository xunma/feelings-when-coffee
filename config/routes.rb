Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :feelings, only: [:index, :new, :create]

  resources :users, only: :show

  resources :comments, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
