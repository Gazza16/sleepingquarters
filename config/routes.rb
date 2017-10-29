Rails.application.routes.draw do
  devise_for :users
  resources :books
  root 'pages#index'
  get 'pages/about', to: 'pages#about'



  get 'pages/contact', to: 'pages#contact'

  get 'pages/location', to: 'pages#location'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
