Rails.application.routes.draw do
  resources :trips
  resources :profiles
  resources :trip_requests
  devise_for :users
  
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
