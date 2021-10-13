Rails.application.routes.draw do
  
  devise_for :users
  resources :videos
  resources :events
  resources :others
  resources :members
  
  get 'hello/yacht' => 'hello#yacht'
  get 'hello/link' => 'hello#link'

  get 'events/index' => 'events#index'

  get 'logins' => 'logins#index'

  get 'members' => 'members#index'

  get 'welcomes/index' => 'welcomes#index'

  get 'reports/index' => 'reports#index'

  get 'results' => 'results#index'
  get 'results/new' => 'results#new'
  post 'results' => 'results#create'
  get 'results/:id' => 'results#show',as: 'result'
  patch 'results/:id' => 'results#update'
  delete 'results/:id' => 'results#destroy'
  get 'results/:id/edit' => 'results#edit', as:'edit_result'

  root 'events#index'

end