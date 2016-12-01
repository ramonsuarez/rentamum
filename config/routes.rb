Rails.application.routes.draw do
  # Moved mounts to top ot make sure they are loaded before we get to work with controllers
  mount Attachinary::Engine => "/attachinary"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :mother_listings do
    resources :bookings, only: [:show, :new, :create, :destroy]
  end
  devise_for :users
  root to: 'pages#home'
  resources :users, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
