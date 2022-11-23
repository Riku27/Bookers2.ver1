Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: "homes#top"
  get 'home/about', to: 'home#about', as: 'about'
  get 'homes/top', to: 'homes#top', as: 'top'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :users, only: [:show, :edit, :index, :create, :new, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
