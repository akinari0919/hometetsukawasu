Rails.application.routes.draw do
  root 'homes#top'
  get 'index', to: 'boards#index'
  get 'show', to: 'boards#show'
  get 'challenge', to: 'boards#challenge'
  get 'check', to: 'boards#check'
end
