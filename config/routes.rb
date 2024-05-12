Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :feeds, only: %i(index)
  resources :profiles
  root 'pages#index'
end
