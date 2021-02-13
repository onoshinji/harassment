Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts
  get :guilty, to: 'posts#guilty'
  get :not_guilty, to: 'posts#not_guilty'
end
