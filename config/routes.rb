Rails.application.routes.draw do
  resources :lottos
  devise_for :admins
  devise_for :users
  resources :vote_logs
  resources :pledges
  get '/index' => 'home#index'
  root 'home#index'

  get '/random' => 'lottos#new' 

  #get 'home/lotto'
  #post 'home/result'
  #get 'home/result'

  root 'home#index'
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
