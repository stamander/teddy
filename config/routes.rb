Rails.application.routes.draw do
  root to: "shopping#new"
  resources :front,only:[:index]
  resources :shopping


end
