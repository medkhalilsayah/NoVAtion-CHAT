Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
     resources :articles , only: [:index, :create, :show, :destory ,:update]
    end
  end
  resources :articles
  devise_for :users
  
  root  'home#index'
  get 'home/private'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
