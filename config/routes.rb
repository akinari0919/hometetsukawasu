Rails.application.routes.draw do
  root 'boards#index'
  get 'show', to: 'boards#show'
  get 'challenge', to: 'boards#challenge'
end
