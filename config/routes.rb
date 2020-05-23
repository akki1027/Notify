Rails.application.routes.draw do
	root 'tweets#index'
	devise_for :users
	resources :tweets, except: :index do
		resources :comments, only: [:create, :destroy]
	end
	resources :notifications, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
