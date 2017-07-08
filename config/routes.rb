Rails.application.routes.draw do
  root 'accounts#index'
  resources :ideas
  get 'record' => 'static_pages#record'
end
