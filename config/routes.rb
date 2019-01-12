Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'
  resources :parts
  resources :sites
  resources :pages
  collection {post :import}
end

