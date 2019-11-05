Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      resources :stocks
      resources :watchlists, only: [:create, :destroy]

      post '/signup', to: 'users#create'
      post '/signin', to: 'auth#signin'

      get '/autologin', to: 'auth#autologin'

    end
  end

end
