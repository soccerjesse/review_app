Rails.application.routes.draw do
  
  devise_for :users
  root to: 'homes#top'

  resources :caves, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
  end

  
end
