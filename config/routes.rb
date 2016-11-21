Rails.application.routes.draw do
  resources :boards do 
    resources :sounds do 
	  resources :comments
    end
  end
  root "boards#index"
end
