Rails.application.routes.draw do
  devise_for :users
  resources :boxs, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
end
