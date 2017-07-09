Rails.application.routes.draw do
  root 'accounts#index'
  resources :accounts
  get 'record' => 'static_pages#record'

end
