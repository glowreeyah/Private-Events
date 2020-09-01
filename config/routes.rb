Rails.application.routes.draw do
  get 'sessions/new'
  resources :users, only: %i[new create show]
  resources :events, only: %i[index new create show]

  get 'login'=>'sessions#new'
  post 'login' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'events#index'
end
