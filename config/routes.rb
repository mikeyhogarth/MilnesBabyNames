Rails.application.routes.draw do
  resources :results, only: :index
  resource :thank_you, only: :show
  root "guesses#new"
  resources :guesses, only: [:new, :create]
end
