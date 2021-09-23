Rails.application.routes.draw do
  root 'homes#top'
  resources :boards, only: %w[new create] 
  get 'index', to: 'boards#index'
  get 'show', to: 'boards#show'
  get 'challenge', to: 'boards#challenge'
  get 'check', to: 'boards#check'
end
