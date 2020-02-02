Rails.application.routes.draw do
  devise_for :admins
  root 'home#index'

  resources :rooms, only: %i[index show]
  get '/widget/floating_chat', to: 'rooms#widget', as: :floating_chat
end
