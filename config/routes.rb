Rails.application.routes.draw do
  root to: "front#index"
  resources :front,only:[:index]


end
