Rails.application.routes.draw do
  root to: 'workshops#index'
  resources :workshops do
    collection do
      get 'pending'
      get 'archived'
    end
  end

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/sign_in', to: 'pages#sign_in'

  post '/sign_in', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'
end
