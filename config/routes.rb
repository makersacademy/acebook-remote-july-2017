Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'

  root 'welcome#index'
  resources :posts do
    resources :comments
  end

  resources :albums
  resources :groups
  resources :users

end
