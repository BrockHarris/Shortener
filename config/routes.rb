Shortener::Application.routes.draw do
  
  resources :urls
  
  match ":shorturl" => "urls#goto"
  root :to => 'urls#new'
end
