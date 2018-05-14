Rails.application.routes.draw do
  root :to => "home#index"

  resources :posts, only: [:show, :index]
  get "/blog" => "posts#blog", as: :blog
  get "/review_book" => "posts#review_book", as: :review_book
  get "/bun_story" => "posts#bun_story", as: :bun_story
  get "/love_story" => "posts#love_story", as: :love_story
  resources :comments
  resources :messages

  devise_for :admins
  namespace :admin do
    resources :posts
    resources :messages
    root :to => "posts#index"
  end
end
