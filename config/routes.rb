Rails.application.routes.draw do

  resources :awards
  resources :talents
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
  resources :users, only: [:show, :edit]
  resources :users
end
