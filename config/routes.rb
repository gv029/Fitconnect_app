Rails.application.routes.draw do
  root to: 'static_pages#home'

  get '/apply', to: 'static_pages#apply'
end
