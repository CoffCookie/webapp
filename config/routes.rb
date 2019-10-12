Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "users/login" => "users#login"
  post "users/logout" => "users#logout"
  get "users/showlogin" => "users#showlogin"

  resources :users

  get "/" => "home#top"
end
