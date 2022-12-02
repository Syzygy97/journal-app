Rails.application.routes.draw do
  get 'categories/:category_id/tasks', to: "tasks#index", as: "category_tasks"
  get 'categories/:category_id/tasks/new', to: "tasks#new", as: "new_category_task"
  get 'categories/:category_id/tasks/:id', to: "tasks#show", as: "category_task"
  post 'categories/:category_id/tasks', to: "tasks#create"
  get 'categories', to: "categories#index", as: "categories"
  get 'categories/:id', to: "categories#show", as: "category"
  get 'category/new', to: "categories#new", as: "new_category"
  get 'categories/:id/edit', to: "categories#edit", as: "edit_category"
  post 'categories', to: "categories#create", as: "create_category"
  patch 'categories/:id', to: "categories#update"
  put 'categories/:id', to: "categories#update"
  delete 'categories/:id', to: "categories#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
end
