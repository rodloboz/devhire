Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get :profile, to: 'users#profile'

  resources :developers, except: [:destroy] do
    resources :bookings, only: [:create]
    collection do
      get :bookmarked
    end
  end

  resources :bookmarked_developers, only: [:create, :destroy]
end
