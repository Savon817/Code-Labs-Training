Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # localhost:3000/
  #root "controller#action"
  #root "pages#landing"
  # root to: "pages#landing"
  get "/", to: "pages#landing"
end
