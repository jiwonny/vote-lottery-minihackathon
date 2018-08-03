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
  get '/faq' => 'home#faq'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin' # merge할 때 제일 마지막줄에 위치하게 해주세요!!
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
