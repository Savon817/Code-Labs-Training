Rails.application.routes.draw do
  # post '/blog', to 'blogs#create'
  resources :resources, except: [:new, :edit]
  resources :users
end
