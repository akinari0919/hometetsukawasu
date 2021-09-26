Rails.application.routes.draw do
  namespace :admin do
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    resources :boards, only: %w[new create]
  end

  root 'homes#top'
  resources :boards, only: %w[index show destroy] do
    resources :comments, only: %w[new create destroy], shallow: true
  end
  resources :comments, only: %w[index]
  post 'renew', to: 'comments#renew'
end
