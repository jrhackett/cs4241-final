Rails.application.routes.draw do
  resources :tags
  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :boards do
    resources :tags 
    resources :sounds do 
	    resources :comments
    end
  end
  resources :users do
    resources :comments
  end
  resources :users do
    resources :sounds
  end
  root "boards#index"
end
