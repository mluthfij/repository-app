Rails.application.routes.draw do
  resources :repos do
    resources :folders, only: [:show, :create, :destroy]
  end
  get '/moon', to: 'application#moon', as: 'moon'
  get '/sun', to: 'application#sun', as: 'sun'
  get 'pages/index'
  devise_for :users
  root "pages#index"
end
