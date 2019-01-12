Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'
  resources :parts do
	collection {post :import}
  end
  
  resources :sites do
	collection {post :import}
  end
  
end

