Rails.application.routes.draw do
  root to: 'static_pages#home'

  get '/apply', to: 'static_pages#apply'

  get '/profile', to: 'static_pages#profile'

  get '/new', to: 'static_pages#new'

  get '/question', to: 'static_pages#question'

  resources :users
end
