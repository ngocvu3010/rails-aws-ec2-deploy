Rails.application.routes.draw do
  resources :posts
  resources :comments

  root :to => "home#index"
end
