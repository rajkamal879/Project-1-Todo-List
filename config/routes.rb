Rails.application.routes.draw do
  resources :pending_lists
  resources :todo_lists

  root "todo_lists#index"
end
