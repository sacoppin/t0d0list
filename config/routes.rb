Rails.application.routes.draw do
  get 'task/new'
  get 'task/create'
  get 'task/edit'
  get 'task/update'
  get 'task/index'
  get 'task/destroy'
  get 'home/index'
  devise_for :users
  root to: "home#index"
  resources :tasks, except: [:show]
end
