Rails.application.routes.draw do
  resources :in_forms do
    resources :comments
  end
  root to: 'in_forms#index'
end
