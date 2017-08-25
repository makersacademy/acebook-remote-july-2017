Rails.application.routes.draw do

  get 'users/show'

  mount ActionCable.server => '/cable'

  get 'user_list/index'

  devise_for :users

  get 'welcome/index'

  root 'posts#index'

  resources :posts do
    resources :comments
    resources :likes
  end

  resources :users

  

  resources :albums
  resources :groups

  resources :chats do
    resources :messages
  end

  resources :photos

end
