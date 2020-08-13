Rails.application.routes.draw do
  root to:  'sessions#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :favorites, only: [:create, :destroy, :index]

  resources :pictures do
    collection do
      post :confirm
    end
    member do
      patch :confirm
    end
  end
end
