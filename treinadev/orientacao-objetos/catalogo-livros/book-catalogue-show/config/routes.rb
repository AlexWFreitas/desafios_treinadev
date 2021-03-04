Rails.application.routes.draw do
  root to: 'home#index'
  resources :books, only: [:show]
end
