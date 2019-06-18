Rails.application.routes.draw do
  resources :shopping_lists

  root 'shopping_lists#index'
end
