Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root to: 'seats#test'
	root 'static_pages#test'
  namespace :api do
  	namespace :api do

  		resources :seats
	    as :user do
	      post   "/sign-in"       => "sessions#create"
	      delete "/sign-out"      => "sessions#destroy"
	    end
	end
  end
end
