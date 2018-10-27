Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get :autocomplete, to: 'developers#autocomplete'

  resources :developers, only: [:index, :show] do
    resources :bookings, only: [:create]
    collection do
      get :bookmarked
    end
  end

  resources :bookmarked_developers, only: [:create, :destroy]
end
