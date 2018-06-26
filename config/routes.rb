Rails.application.routes.draw do
  devise_for :users
  get "welcomes/index"
  root "welcomes#index"

  resources :notes
end
