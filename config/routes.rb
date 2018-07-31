Rails.application.routes.draw do
  resources :lottos
  devise_for :admins
  devise_for :users

  get '/random' => 'lottos#new' 

  root 'home#index'
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
