Rails.application.routes.draw do

  #resources :users, only: :show
  resources :mother_listings do
    resources :bookings, only: [:show, :new, :create, :destroy]
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get "user/:id", to: 'users#show'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
