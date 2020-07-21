Rails.application.routes.draw do
  root to: "shopping#index"
  resources :front,only:[:index]
  resources :shopping


end
