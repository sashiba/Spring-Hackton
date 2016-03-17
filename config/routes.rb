Rails.application.routes.draw do
  resources :tests
  resources :accounts do
    get 'profile', on: :collection #member
  end
  get '/home', to: 'static_pages#home'
  post '/', to: 'static_pages#create'
  delete '/home', to: 'static_pages#destroy'
end
