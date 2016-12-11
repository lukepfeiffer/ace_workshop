Rails.application.routes.draw do
  root to: 'workshops#index'
  resources :workshops

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
end
