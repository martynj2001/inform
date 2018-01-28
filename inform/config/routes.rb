Rails.application.routes.draw do
  resources :in_forms
  root to: 'in_forms#index'
end
