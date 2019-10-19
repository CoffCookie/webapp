Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "users/login" => "users#login"
  get "users/login" => "users#showlogin"
  
  post "users/logout" => "users#logout"
  get "users/logout" => "users#showlogout"


  resources :users

  get "/" => "home#top"
end
