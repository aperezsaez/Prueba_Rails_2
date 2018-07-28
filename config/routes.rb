Rails.application.routes.draw do
  get 'todos/index'
  resources :todos, only: :index do
    member do
      post 'complete_todo'
    end
  resources :user_todo, only: :create

  end
  root to: 'todos#index'
  devise_for :users
  resources :user_todo, only: :index
  resources :user_todo, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
