Rails.application.routes.draw do
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end

  namespace :api do
    resources :users, only: %i[create]
    resources :bookmarks, only: %i[index]
  end
  
  get 'landing/index'
  root 'landing#index'
end
