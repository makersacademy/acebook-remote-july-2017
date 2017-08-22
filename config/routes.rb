Rails.application.routes.draw do

  devise_for :users  
  get 'welcome/index'
  root 'welcome#index'     
  resources :posts do
    resources :comments
  end
  
  get 'albums/new'
  root 'albums#new'
  resources :albums

end
