Rails.application.routes.draw do
  resources :surveys, only: [:new, :create, :show]
  resources :completed_surveys, only: [:new, :create, :show]

  root to: "landing#index"
end
