Rails.application.routes.draw do
  resources :users
  root 'static_pages#home'
  get '/index', to: 'users#index'
  get '/signup', to: 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
