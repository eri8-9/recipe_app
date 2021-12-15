Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'foods#index'

  resources :foods

  get 'public_recipes', to: "public_recipes#index", as: "public_recipes"
  get 'general_shopping_list', to: "general_shopping_list#index", as: "general_shopping_list"

  resources :recipes do
    resources :recipe_foods, except: [:show]
  end 

  resources :foods, except: [:update, :show]

  get 'users/index'
  get 'users/show'
end
