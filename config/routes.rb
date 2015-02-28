Rails.application.routes.draw do
  get 'user/profile'

  resources :categories do
    resources :products do
      resources :reviews
    end
  end
  devise_for :users
  root 'categories#index'
end
