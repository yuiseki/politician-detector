Rails.application.routes.draw do
  resources :political_parties
  resources :elections
  resources :users
  resources :politicians
  constraints format: :json do
    post '/users/login', to: 'users#login'
    get '/hello', to: 'hello#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
