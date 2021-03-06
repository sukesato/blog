Rails.application.routes.draw do
  root to: 'tops#index'
  resources :sessions, only: [:new, :create,:show, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]
  resources :blogs do
    collection do
      post :confirm
    end
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end