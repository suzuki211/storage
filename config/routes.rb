Rails.application.routes.draw do
  #ユーザー関係
  devise_for :users

  #収納関係
  resources :items, onl: [:new, :create, :index, :show, :edit, :destroy, :update] do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show, :edit]
  #Topページ関係
  root to: 'homes#top'
end
