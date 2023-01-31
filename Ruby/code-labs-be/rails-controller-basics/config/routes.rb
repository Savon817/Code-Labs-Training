Rails.application.routes.draw do
  # localhost:3000/about-us
  get 'about-us', to: "static_pages#about_us"

  #localhost:3000/sign-up
  get 'sign-up', to: "users#new"
  
  # localhost:3000/users
  get 'users', to: "users#index"
end
