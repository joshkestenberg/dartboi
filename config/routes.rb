Rails.application.routes.draw do
  resources :shows
  get '/contact_us', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'
  get '/about', to: 'home#about'
  get '/music', to: 'home#music'
  get '/sessions/new', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  root to: 'home#main'
end
