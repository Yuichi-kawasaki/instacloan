Rails.application.routes.draw do
  root to: 'users#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users do
    collection do
      post :confirm
    end
    collection do
      get :star
    end
  end
  resources :pictures do
    collection do
      post :confirm
    end
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :favorites, only: [:create, :destroy, :index]
end
