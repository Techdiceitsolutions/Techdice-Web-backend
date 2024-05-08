Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations',
    passwords: 'admins/passwords'
  }

  get '/admins' => 'admins#index'

  namespace :api do
    namespace :v1 do
      resources :services
      resources :applications
      resources :feedbacks
    end

  end

end
