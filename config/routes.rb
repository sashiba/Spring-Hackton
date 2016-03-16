Rails.application.routes.draw do
  resources :tests
  resources :accounts do
    get 'profile', on: :collection #member
  end
end
