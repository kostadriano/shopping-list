Rails.application.routes.draw do
  resources :items
  resources :shopping_lists

  root 'shopping_lists#index'
end
