Rails.application.routes.draw do
  resources :owners, only: [:index, :show] do
    resources :pets, only: [:index, :show, :new, :create]
  end

  namespace :admin do
    resources :stats, only: [:index]
  end

  root 'owners#index'
end
