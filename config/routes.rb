Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, path: :developers, only: [:index, :show]
end
