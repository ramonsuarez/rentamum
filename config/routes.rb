Rails.application.routes.draw do

  resources :mother_listings do
    resources :bookings, only: [:show, :new, :create, :destroy]
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :users, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
