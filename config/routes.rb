AppStore::Application.routes.draw do
  root to: 'apps#index'


  resources :users, only: [:index, :show, :new, :create] do

    # This will give us '/users/:user_id/apps'
    resources :apps, only: [:index]
  end


  #resources :users, except: [:destroy, :edit, :update]
  resources :apps, only: [:index, :show]
  # resources :users
  # resources :apps

  # This gives us the path of 'buy_app_path'
  put '/apps/:id/buy', to: 'apps#buy', as: 'buy_app'

  # Redirect Alias
  get '/applications', to: redirect('/apps')
end
