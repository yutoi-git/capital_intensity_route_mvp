Rails.application.routes.draw do
  root  'lines#index'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  post 'guest_login', to: 'user_sessions#guest_login'

  resources :users, only: %i[new create]

  get '/bookmarks', to: 'stations#bookmark'
  get '/:code', to: 'stations#index'

  resources :stations do
    resource :bookmarks, only: [:create, :destroy], param: :station_code
  end
end
