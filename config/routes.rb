Rails.application.routes.draw do
  root :to => "home#index"

  resources :posts, only: [:show, :index]
  resources :comments

  namespace :admin do
    resources :posts
    root :to => "posts#index"
  end
end
