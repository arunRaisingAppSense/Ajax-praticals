Rails.application.routes.draw do
  
  
  resources :people
  resources :things
  resources :tests
  resources :products do
    get "delete"
  end
  #root 'products#index'
  root 'people#index'
  #root 'todos#index'
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
