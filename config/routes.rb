Rails.application.routes.draw do
  resources :bookings
  get 'users/index'
  get 'users/edit/:id', to: 'users#edit'
  # get 'boats/show/:id', to: 'boats#show'
  get 'users/show'
  post 'boats/:id', to: 'bookings#create'
  resources :boats
  devise_for :users
  resources :books
  root 'pages#index'
  get 'pages/about', to: 'pages#about'
  get 'pages/contact', to: 'pages#contact'
  get 'pages/location', to: 'pages#location'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
