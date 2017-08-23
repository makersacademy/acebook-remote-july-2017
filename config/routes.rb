Rails.application.routes.draw do

  get 'photos/index'

  devise_for :users
  get 'welcome/index'

  root 'welcome#index'
  resources :posts do
    resources :comments
  end

  get 'albums/new'
  root 'albums#new'
  resources :albums
  resources :groups

  get 'photos/index'
  root 'photos#new'
  resources :photos
end
