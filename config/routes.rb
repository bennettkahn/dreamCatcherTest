Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :entries
  root 'home#index'
  get 'home/about'
  get 'home/explore'
  get 'search', to:"entries#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
