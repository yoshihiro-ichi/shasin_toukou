Rails.application.routes.draw do
  Rails.application.routes.draw do
    resources :blogs do
      collection do
        post :confirm
      end
    end
  end
  root 'users#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create,:show]
  resources :favorites, only: [:create, :destroy]
end
