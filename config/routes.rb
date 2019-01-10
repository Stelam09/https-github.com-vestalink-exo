Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'
  resources :parts
  resources :sites
end

