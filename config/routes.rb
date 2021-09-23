Rails.application.routes.draw do
  root 'homes#top'
  resources :boards, only: %w[index show new create] 
  get 'challenge', to: 'boards#challenge'
  get 'check', to: 'boards#check'
end
