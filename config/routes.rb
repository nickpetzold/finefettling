Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#landing'
  get 'home', to: 'pages#home', as: :home

  resources :cars, only: [:new, :create]
  get 'garage', to: 'cars#garage', as: :garage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
