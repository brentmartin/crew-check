Rails.application.routes.draw do
  resources :surveys, only: [:new, :create, :show]
  resources :completed_surveys, only: [:new, :create, :show]
  resources :landing, only: [:new]

  constraints Clearance::Constraints::SignedIn.new do
    root to: 'landing#index', as: :signed_in_root
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: 'landing#new'
  end

end
