Rails.application.routes.draw do
  get 'users/index'
  resources :user_services
  resources :services
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations',
    passwords: 'admins/passwords'
  }

  namespace :api do

    namespace :v1 do
      resources :services
      resources :user_services
    end

  end

  get '/users', to: 'users#index'

end
