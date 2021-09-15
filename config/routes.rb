Rails.application.routes.draw do
  root to: 'events#index'
  resources :events
  
  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  
  get 'members' => 'members#index'
  get 'members/new' => 'members#new'
  post 'members' => 'members#create'
  patch 'members/:id' => 'members#update'
  delete 'members/:id' => 'members#destroy'
  get 'members/:id/edit' => 'members#edit', as:'edit_member'

  get 'results' => 'results#index'
  get 'results/new' => 'results#new'
  post 'results' => 'results#create'
  get 'results/:id' => 'results#show',as: 'result'
  patch 'results/:id' => 'results#update'
  delete 'results/:id' => 'results#destroy'
  get 'results/:id/edit' => 'results#edit', as:'edit_result'

  get 'others' => 'others#index'
  get 'others/new' => 'others#new'
  post 'others' => 'others#create'
  get 'others/:id' => 'others#show',as: 'other'
  patch 'others/:id' => 'others#update'
  delete 'others/:id' => 'others#destroy'
  get 'others/:id/edit' => 'others#edit', as:'edit_other'

  root 'hello#index'

end