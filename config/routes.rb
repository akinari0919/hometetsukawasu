Rails.application.routes.draw do
  root 'boards#index'
  get 'show', to: 'boards#show'
end
