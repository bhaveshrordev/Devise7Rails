Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/landing_page'
  get 'static_pages/dashboard'

  root to: "static_pages#landing_page"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
