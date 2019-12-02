Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :buildings, only: [:index, :show, :create, :update, :destroy]
      resources :routes, only: [:index, :show, :create, :update, :destroy]
    end
  end
  post '/login', to: 'login#login'
end
