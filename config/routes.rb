Rails.application.routes.draw do
  resources :shows
  get '/contact_us', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'
  get '/about', to: 'home#about'
  get '/music', to: 'home#music'
  root to: 'home#main'
end
