Rails.application.routes.draw do
  get 'parts/index'
  resources :sites do
	collection {post :import}
  end
  root to: "sites#index"
end

