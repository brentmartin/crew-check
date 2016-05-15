Rails.application.routes.draw do
  resources :surveys, only: [:show]
  resources :completed_surveys, only: [:new, :create]
end
