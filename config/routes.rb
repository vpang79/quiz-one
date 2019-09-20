Rails.application.routes.draw do
  root 'trivia#index'
  resources :trivia
end
