Rails.application.routes.draw do
  resources :finalresults
  devise_for :users
  resources :categories
  resources :tests
  resources :questions
  root to: 'questions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
