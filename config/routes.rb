Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'carts/show'

  # get 'orders/create'

  devise_for :users, controllers:{
  	registrations: 'users/registrations',
  	sessions: 'users/sessions'
  }
  get 'products/index'

  root "products#index"

  resources :products, only: [:index, :show] do
  	resources :orders, only: [:create, :destroy]
  end

  resources :users, only: [:show] do
    resources :carts, only: [:show] do
      resources :payments, only: [:create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
