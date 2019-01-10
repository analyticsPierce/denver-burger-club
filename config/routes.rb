Rails.application.routes.draw do
  root "summaries#index"
  resources :reviews

  resources :restaurants
end
