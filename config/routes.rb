Rails.application.routes.draw do

  get    'home'                     => 'static_pages#home'
  get    'about'                    => 'static_pages#about'
  get    'signup'                   => 'users#new'
  get    'login'                    => 'sessions#new'
  post   'login'                    => 'sessions#create'
  delete 'logout'                   => 'sessions#destroy'

  get    'messages/:id'             => 'messages#show'
  get    'users/:id/receivers'      => 'receivers#new'

  resources :messages
  resources :users
  resources :relationship
  resources :receivers
end
