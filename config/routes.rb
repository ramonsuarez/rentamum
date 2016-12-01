Rails.application.routes.draw do
  # Moved mounts up to make sure they run before everything. R.
  mount Attachinary::Engine => "/attachinary"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :mother_listings do
    resources :bookings, only: [:show, :new, :create, :destroy]
  end

  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  resources :users, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
