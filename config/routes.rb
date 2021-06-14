Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :animals
  get 'my_animals', to: 'animals#user_animals'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
