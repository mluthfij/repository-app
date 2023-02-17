Rails.application.routes.draw do
  get '/search', to: 'search#index', as: 'search'
  patch 'repos/:id', to: 'repos#private_fiture', as: 'private_fiture', :via => :update
  resources :profiles, only: :show
  resources :repos do
    resources :folders, only: [:show, :create, :destroy]
    resources :items, only: [:show, :create, :destroy]
  end
  get '/moon', to: 'application#moon', as: 'moon'
  get '/sun', to: 'application#sun', as: 'sun'
  get 'pages/index'
  devise_for :users
  root "pages#index"
end
