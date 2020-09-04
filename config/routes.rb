Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :trips, only: [:new, :create, :edit, :update, :destroy, :show, :index]
  get 'css-cheatsheets', to: 'pages#css-cheatsheets'
end
