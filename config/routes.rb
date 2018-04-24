Rails.application.routes.draw do
  resources :shams

  root 'shams#index'
  get 'new', to: 'shams#new'
end
