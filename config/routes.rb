Rails.application.routes.draw do
  resources :galleries
  get 'pages/about'

  get 'pages/contact'

  get "about-me", to:'pages#about'
  get "contact", to:'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end