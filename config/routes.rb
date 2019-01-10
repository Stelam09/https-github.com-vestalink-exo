Rails.application.routes.draw do
  get 'parts' => 'parts#index'
  post 'parts' => 'parts#create'
  
  
end

