Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :emails, only: [:index, :show, :create, :update, :destroy]
      resources :users, only: [:index, :show, :create]
      get '/login/:name', to: 'users#login'
    end
  end

end
