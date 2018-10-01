Rails.application.routes.draw do

  resources :students do
    resources :talents
  end

  resources :talents do
    resources :awards
  end


  resources :students
  resources :awards
  resources :talents
  devise_for :users
  get 'welcome/index'
  get 'welcome/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
  resources :users, only: [:show, :edit]
  resources :users
end
