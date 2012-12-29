Shortener::Application.routes.draw do
  #match '/' => 'urls#new'
  #match 'settings' => "users#edit",		:as => :settings
  resources :urls
  
  match ":shorturl" => "urls#goto"
  root :to => 'urls#new'
end
