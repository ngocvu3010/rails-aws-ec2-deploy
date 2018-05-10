Rails.application.routes.draw do
  resources :posts

  root :to => "home#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
