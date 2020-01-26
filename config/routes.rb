Rails.application.routes.draw do
  # namespace :app do
  #   get 'dashboard/index'
  # end
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
    get '/users/become/:id', to: 'users#become', as: :become_user
  end

  namespace :app do
    root to: 'dashboard#index'
    resources :allergies, only: [:index, :create]
    resources :meal_plans do
      member do
        get :clear
      end
    end
  end
end
