Rails.application.routes.draw do
  resources :owners, only: [:index, :show] do
    resources :pets, only: [:index, :show, :new, :create]
  end

  root 'owners#index'
end
