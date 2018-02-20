Rails.application.routes.draw do
  resources :owners, only: [:index, :show] do
    resources :pets, only: [:index, :show, :new, :create]
  end

  post '/', to: 'owners#add'

  get '/greeting', to: 'owners#greeting', as: 'greeting'
  get '/empty', to: 'owners#empty_welcome', as: 'empty'

  namespace :admin do
    resources :stats, only: [:index]
  end

  get '/login', to: 'sessions#new', as: 'new_login'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#logout', as: 'logout'
  post '/logout', to: 'sessions#destroy'

  root 'owners#index'
end
