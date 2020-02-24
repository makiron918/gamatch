Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'
  resources :tops, only: :index
  resources :users, only: [:index, :show] do
    member do
      get 'about'
    end
  end
  resources :messages, only: :create
  resources :rooms, only: [:create, :show, :index]
end
