Rails.application.routes.draw do
  #vote_logs routing
  resources :vote_logs
  get 'home/index'
  root 'vote_logs#index'
  post 'vote_logs/checkDouble' => 'vote_logs#checkDouble'

  #pledges routing
  resources :pledges
  get 'home/index'
  get 'home/faq'

  #수영 routing
  resources :lottos
  devise_for :admins
  devise_for :users
  resources :vote_logs
  resources :pledges
  get '/index' => 'home#index'

  get '/random' => 'lottos#new' 

  #get 'home/lotto'
  #post 'home/result'
  #get 'home/result'

  get '/faq' => 'home#faq'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin' # merge할 때 제일 마지막줄에 위치하게 해주세요!!
 
end
