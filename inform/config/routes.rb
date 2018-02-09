Rails.application.routes.draw do
  resources :in_forms do
    resources :comments
  end
  resources :users
  resources :user_sessions, only: [:new, :create, :destroy ]

  get 'login' => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'

  root to: 'user_sessions#new'
end
