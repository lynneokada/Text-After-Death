Rails.application.routes.draw do

  get    'home'                            => 'static_pages#home'
  get    'about'                           => 'static_pages#about'
  get    'signup'                          => 'users#new'
  get    'login'                           => 'sessions#new'
  post   'login'                           => 'sessions#create'
  delete 'logout'                          => 'sessions#destroy'

  resources :messages
  resources :users
  resources :senders, controller: 'users', type: 'Sender'
  resources :receivers, controller: 'users', type: 'Receiver'

end
