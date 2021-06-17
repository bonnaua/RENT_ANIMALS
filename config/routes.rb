Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :animals do
    resources :bookings, only: [:new, :create]
  end
  get 'my_animals', to: 'animals#user_animals'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:update]
  get 'my_bookings', to: 'bookings#user_bookings'
end
