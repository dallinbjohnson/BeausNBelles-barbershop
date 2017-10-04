Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :galleries
  get 'pages/about'

  get 'pages/contact'

  get "about-me", to:'pages#about'
  get "contact", to:'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
