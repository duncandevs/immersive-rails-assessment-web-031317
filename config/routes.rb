Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index,:show]
  resources :episodes, only: [:index,:show]
  resources :sessions
  get '/guests/:id/appearance' , to: 'appearances#new' , as: 'appearance'
  post '/guests/:id/appearance' , to: 'appearances#create'
end
