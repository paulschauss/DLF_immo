Rails.application.routes.draw do
  devise_for :users, path: '/admin'

  root to: 'pages#home'

  resources :houses, only: [:show]


  # ADMIN SPACE

  namespace :admin do
    root to: 'houses#index'

    resources :houses, only: [:index, :new, :create, :edit, :update, :destroy]
  end
end
