Rails.application.routes.draw do
  resources :members
  resources :social_groups
  resources :people
  resources :rops
  resources :neighbourhoods
  devise_for :users
  root "home#index"
end
