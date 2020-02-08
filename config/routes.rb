Rails.application.routes.draw do
  devise_for :admins
  root 'home#index'

  namespace :admins do
    resources :rooms, only: %i[index show]
  end
  get '/widget/chat', to: 'rooms#enter', as: :chat

  mount ActionCable.server => '/cable'
end
