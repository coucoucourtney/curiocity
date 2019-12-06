Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/favorite', to: 'buildings#favorite'
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :buildings, only: [:index, :show, :create, :update, :destroy]
      resources :routes, only: [:index, :show, :create, :update, :destroy] do
        resources :checkpoints, only: [:index, :show, :create, :update, :destroy]
      end
    end
  end

  post '/login', to: 'login#login'

  # get '/favorite', to: 'buildings#favorite'
  # post '/favorite', to: 'favorite#get'
  # put '/favorite', to: 'favorite#update'
end
