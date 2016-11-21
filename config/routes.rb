Rails.application.routes.draw do
  resources :sounds do 
	resources :comments
  end
  root "sounds#index"
end
