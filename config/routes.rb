Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "login/login" => "login#logi"
  post "login/logout" => "login#logout"
  get "login/show" => "login#show"
end
