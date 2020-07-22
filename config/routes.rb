Rails.application.routes.draw do
  devise_for :users
  root to: "front#index"
  resources :front,only:[:index]
  


  resources 'guest'
  resources :front,only: [:index]

  resources :access,only: [:index]
  resources :private,only: [:index]




  resources :shopping do
    collection do
      get  'purchase/:id'=>  'shopping#purchase', as: 'purchase'
      post 'pay/:id'=>   'shopping#pay', as: 'pay'#httpメソッドはpostなので注意
      get  'done/:id'=>      'shopping#done', as: 'done'
    end
  end
  


end
