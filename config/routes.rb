Rails.application.routes.draw do
  root to: 'static_pages#home'

  get '/apply', to: 'static_pages#apply'

  get '/profile', to: 'static_pages#profile'

  get '/new', to: 'static_pages#new'

  get '/questions', to: 'static_pages#question'

  get '/client_questions', to: 'static_pages#client_questions'

  get '/signup', to: 'static_pages#signup'

  resources :users
end

