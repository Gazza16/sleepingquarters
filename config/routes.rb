Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get 'users/index'
  get 'users/edit/:id', to: 'users#edit'
  get 'users/show'
  post 'boats/:id', to: 'bookings#create'
  get 'pages/about', to: 'pages#about'
  get 'pages/contact', to: 'pages#contact'
  get 'pages/location', to: 'pages#location'
  get 'pages/thankyou', to: 'pages#thankyou'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :bookings
  resources :books
  resources :boats
  resources :charges
  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
