Rails.application.routes.draw do
  resources :issues
  resources :requests
  resources :users
  resources :items
  post 'users', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
