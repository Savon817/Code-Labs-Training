Rails.application.routes.draw do
 root 'static_pages#landing'
 get 'about-us', to: 'static_pages#about_us'
 get 'users', to: 'users#index'
end
