Rails.application.routes.draw do
  root to: 'workshops#index'
  resources :workshops
end
