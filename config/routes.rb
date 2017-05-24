Rails.application.routes.draw do
  root   'static_pages#home'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/help',    to: 'static_pages#help'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    'login',    to: 'sessions#new'
  post   'login',    to: 'sessions#create'
  delete 'logout',   to: 'sessions#destroy'

  resources :account_activations, only:   :edit
  resources :password_resets,     only:   %i[new create edit update]
  resources :users,               except: %i[new create] # do
  resources :microposts,          only:   %i[create destroy]
  # end
end
