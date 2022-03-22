Rails.application.routes.draw do
  devise_for :users
  get 'orders/index'
  get 'orders/new'
  get 'customers/index'
  get 'meals/index'
  get 'meals/create'
  root to: 'pages#home'
  resources :customers, only: [:index, :create]
  resources :meals, only: [:index, :create]
  resources :orders, only: [:index, :new, :create] do
    resources :order_details, only: [:create]
  end
end
