Rails.application.routes.draw do
  root 'homes#top'
  resources :boards, only: %w[index show new create destroy] do
    resources :comments, only: %w[new create destroy], shallow: true
  end
end
