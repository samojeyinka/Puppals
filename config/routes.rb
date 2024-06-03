Rails.application.routes.draw do
  # devise_for :users

  devise_for :users, controllers: {
    sessions: "sessions",
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


  resources :feeds, only: %i(index)
  resources :dogs, only: %i(new create)
  resources :user_profiles
  root 'pages#index'
end
