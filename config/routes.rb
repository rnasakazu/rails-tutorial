Rails.application.routes.draw do
  devise_for :admins
  root 'home#index'

  namespace :admins do
    resources :rooms, only: %i[index show]
  end
  get 'rooms/enter', to: 'rooms#enter'

  mount ActionCable.server => '/cable'
end
