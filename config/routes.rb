Rails.application.routes.draw do
  get 'blogs' => 'blogs#index'
  get 'blogs/show' => 'blogs#show'
  get 'blogs/new' => 'blogs#new'
  post 'blogs' => 'blogs#create'
  get 'blogs/edit' => 'blogs#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root :to => 'pages#home'
  #/welcome in website refers to pages_controller.rb
end
