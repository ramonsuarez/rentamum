Rails.application.routes.draw do
  get 'bookings/show'

  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/destroy'

  get 'users/show'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
