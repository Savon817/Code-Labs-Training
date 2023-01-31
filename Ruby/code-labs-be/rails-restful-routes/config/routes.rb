Rails.application.routes.draw do
  
  # index
  get 'blogs', to: "blogs#index"

  # new
  get 'blog/new', to: "blogs#new"

  # create
  post 'blogs', to: "blogs#create"

  # show
  # localhost:3000/blogs/5
  get 'blogs/:id', to: "blogs#show"

  # edit
  get 'blogs/:id/edit', to: "blogs#edit"

  # update
  put 'blogs/:id', to: "blogs#update"

  # destroy
  delete 'blogs/:id', to: "blogs#destroy"
end
