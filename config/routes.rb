Blog::Application.routes.draw do |map|
  resources :comments

  resources :categories

  resources :posts

  root :to=>"posts#index"
end
