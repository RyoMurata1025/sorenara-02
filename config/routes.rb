Rails.application.routes.draw do
  devise_for :users
  get 'items/index'

  root 'items#index'

  resources :items, only: [:index, :show, :new, :edit, :create]
  patch 'items/:id', to: 'items#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
