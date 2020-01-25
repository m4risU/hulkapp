Rails.application.routes.draw do
  # namespace :nutritionists do
  #   get 'dashboard/index'
  # end
  devise_for :nutritionists
  devise_for :users
  devise_for :admins
  get 'home/index'
  # get 'shopping_lists/show'
  # get 'allergies/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/shopping_lists/:number', to: 'shopping_lists#show'
  get '/allergies/:number', to: 'allergies#show'

  root to: "home#index"

  namespace :nutritionists do
    root to: 'dashboard#index'
  end
end
