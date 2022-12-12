Rails.application.routes.draw do
  
  root 'blog#index'
  get 'blogs' => 'blog#index'
  get 'blogs/new' => 'blog#new', as: 'new_blog'
  get 'blogs/:id' => 'blog#show', as:'blog'

end
