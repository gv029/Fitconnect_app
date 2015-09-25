Rails.application.routes.draw do
  root to: 'static_pages#home'

  get '/apply', to: 'static_pages#apply'

  get '/profile', to: 'static_pages#profile'

  get '/new', to: 'static_pages#new'

  get '/questions', to: 'static_pages#question'
  post '/questions', to: 'static_pages#question'

  get '/client_questions', to: 'static_pages#client_questions'

  get '/sign_in', to: 'static_pages#sign_in'

  get '/sign_up', to: 'static_pages#sign_up'

  resources :users
end

