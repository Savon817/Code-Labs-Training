Rails.application.routes.draw do

  post '/blog', to 'blogs#create'
end
