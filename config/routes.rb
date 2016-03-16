Rails.application.routes.draw do
  resources :tests
  resources :markets do
    get '/markets/ak47' => 'markets#ak47'
  end
end
