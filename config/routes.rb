Rails.application.routes.draw do
  resources :shows
  resources :contact
  get '/about', to: 'home#about'
  get '/music', to: 'home#music'
  root to: 'home#main'
end
