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
  get '/404', to: 'errors#not_found'
  get '/422', to: 'errors#unacceptable'
  get '/500', to: 'errors#internal#error'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :bookings, :boats, :charges
  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
