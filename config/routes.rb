Rails.application.routes.draw do
  resources :exercises
  resources :workouts
  resources :ingredients
  resources :meals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
