Rails.application.routes.draw do
  # get 'books/index'
  get 'books', to: 'books#index'
end
