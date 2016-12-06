Rails.application.routes.draw do
  devise_for :users, controllers:{
  	registrations: 'users/registrations',
  	sessions: 'users/sessions'
  }
  get 'products/index'

  root "products#index"

  # resources :products, only: [:index, :show] do
  # 	resources :orders, only: [:create]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
