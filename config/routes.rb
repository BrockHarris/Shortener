Shortener::Application.routes.draw do
  
  get "home/index"
  
  resources :urls
  
  match ":shorturl" => "urls#goto"
  root :to => 'home#index'
end
