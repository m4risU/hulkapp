Rails.application.routes.draw do
  # get 'shopping_lists/show'
  # get 'allergies/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/shopping_lists/:number', to: 'shopping_lists#show'
  get '/allergies/:number', to: 'allergies#show'
end
