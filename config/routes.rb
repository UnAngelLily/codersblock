Rails.application.routes.draw do
  resources :blogs

  root :to => 'pages#home'

  # get 'blogs' => 'blogs#index'
  #
  # get 'blogs/new' => 'blogs#new'
  #
  # post 'blogs' => 'blogs#create'
  #
  # get 'blogs/:id' => 'blogs#show'
  #
  # get 'blogs/:id/edit' => 'blogs#edit'
  #
  # patch 'blogs/:id' => 'blogs#update'
  #
  # delete 'blogs/:id' => 'blogs#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  #/welcome in website refers to pages_controller.rb
end
