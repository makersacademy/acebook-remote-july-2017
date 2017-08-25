Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  get 'user_list/index'

  devise_for :users

  get 'welcome/index'

  root 'welcome#index'
  resources :posts do
    resources :comments
    resources :likes
  end

  get 'albums/new'
  root 'albums#new'
  resources :albums
  resources :groups
  resources :chats do
    resources :messages
  end
end
