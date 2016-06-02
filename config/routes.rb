Rails.application.routes.draw do
  get 'games/show'

  get '/index', to: 'home#index'
  get '/info', to: 'home#info'
  resources :games

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
