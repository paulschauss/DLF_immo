Rails.application.routes.draw do
  devise_for :users, path: '/admin', skip: [:registrations]

  root to: 'pages#home'
  get 'mentions-legales', to: 'pages#mentions'
  resources :houses, only: [:show]


  # ADMIN SPACE

  namespace :admin do
    root to: 'houses#index'

    resources :houses, only: [:index, :new, :create, :edit, :update, :destroy]
  end
end
