Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :trips, only: [:new, :create, :edit, :update, :destroy, :show, :index]
  get 'css-cheatsheets', to: 'pages#css-cheatsheets'
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
