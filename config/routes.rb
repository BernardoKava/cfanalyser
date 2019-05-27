Rails.application.routes.draw do
  get 'inflows/idordered'
  get 'outflows/idordered'

  devise_for :users
  resources :inflowtypes
  resources :outflowtypes
  resources :outflows
  resources :people
  resources :bankaccounts
  resources :cashflows
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  resources :inflows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
