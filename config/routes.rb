Rails.application.routes.draw do
  get 'products/index'

  # resources :products, only: [:index, :show] do
  # 	resources :orders, only: [:create]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
