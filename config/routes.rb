Rails.application.routes.draw do
  resources :neighbourhoods
  devise_for :users
  root "home#index"
end
