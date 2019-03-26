Rails.application.routes.draw do
  resources :foods do
  end

  resources :recipes
  # Manual coding that `resources :recipes` does for us
  # get "/recipes", to: "recipes#index"
  # get "/recipes/:id", to: "recipes#show"
  # post "/recipes", to: "recipes#create"
  # delete "/recipes/:id", to: "recipes#destroy"
  # put "/recipes/:id", to: "recipes#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
