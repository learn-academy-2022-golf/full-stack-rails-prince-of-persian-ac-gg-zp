Rails.application.routes.draw do
  
  root 'blog#index'
  get 'blogs' => 'blog#index'
  get 'blogs/new' => 'blog#new', as: 'new_blog'
  get 'blogs/edit/:id' => 'blog#edit', as: 'edit_blog'
  get 'blogs/:id' => 'blog#show', as:'blog'
  post 'blogs' => 'blog#create'
  delete 'blogs/:id' => 'blog#destroy', as: 'delete_blog'
  patch 'blogs/:id' => 'blog#update'

end
