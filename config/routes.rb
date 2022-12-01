Rails.application.routes.draw do
  get 'categories', to: "categories#index", as: "categories"
  get 'categories/show'
  get 'category/new', to: "categories#new", as: "new_category"
  get 'categories/edit'
  post 'categories', to: "categories#create", as: "create_category"
  get 'categories/update'
  get 'categories/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
end
