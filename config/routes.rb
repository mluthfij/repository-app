Rails.application.routes.draw do
  resources :folders
  get '/moon', to: 'application#moon', as: 'moon'
  get '/sun', to: 'application#sun', as: 'sun'
  devise_for :users
  get 'pages/index'
  root "pages#index"
end
