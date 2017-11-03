Rails.application.routes.draw do
  resources :bookings
  get 'users/index'
  get 'users/edit/:id', to: 'users#edit'
  get 'users/show'
  post 'boats/:id', to: 'bookings#create'
  root 'pages#index'
  get 'pages/about', to: 'pages#about'
  get 'pages/contact', to: 'pages#contact'
  get 'pages/location', to: 'pages#location'

  resources :boats
  devise_for :users
  resources :books

  resources :conversations do
    resources :messages

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
