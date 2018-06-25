Rails.application.routes.draw do
  get "welcomes/index"
  root "welcomes#index"
end
