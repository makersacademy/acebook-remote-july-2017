Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  get 'posts/index'
  root 'posts#index'
  resources :posts
end
