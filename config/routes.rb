Rails.application.routes.draw do
  root 'users#index'
  get 'static_pages/home'
  get 'static_pages/about'

  resources :messages
  resources :users
  resources :senders, controller: 'users', type: 'Sender'
  resources :receivers, controller: 'users', type: 'Receiver'

end
