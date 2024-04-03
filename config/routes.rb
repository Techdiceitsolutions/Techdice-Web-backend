Rails.application.routes.draw do
  resources :services

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations',
    passwords: 'admins/passwords'
  }

  namespace :api do

    namespace :v1 do
      resources :services
    end

  end

end
