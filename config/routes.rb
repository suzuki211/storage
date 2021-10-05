Rails.application.routes.draw do
  devise_for :users
  resources :items, onl: [:new, :create, :index, :show, :edit, :destroy, :update] do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show, :edit]
  root to: 'homes#top'
end
