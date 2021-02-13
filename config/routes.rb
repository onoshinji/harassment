Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'posts#index'
  resources :posts
  get :guilty, to: 'posts#guilty'
  get :not_guilty, to: 'posts#not_guilty'
  get :little_guilty, to: 'posts#little_guilty'
  get :little_not_guilty, to: 'posts#little_not_guilty'

end
