Rails.application.routes.draw do
  
  root 'blog#index'
  get 'blogs' => 'blog#index'

end
