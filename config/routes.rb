Rails.application.routes.draw do
  devise_for :users
  resources :profiles
  root 'pages#index'
end
