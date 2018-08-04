Rails.application.routes.draw do

  resources :fundings
  resources :vote_logs
  get 'home/index'
  root 'vote_logs#index'

  post 'vote_logs/checkDouble' => 'vote_logs#checkDouble'
  resources :pledges
  get 'home/index'
  
  get 'help/support' => 'help#support'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  
end


