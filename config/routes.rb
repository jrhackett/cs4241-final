Rails.application.routes.draw do
  resources :users
  resources :boards do 
    resources :sounds do 
	  resources :comments
    end
  end
  root "boards#index"
end
