Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :taxonomies
    resources :taxons
    resources :posts
    resources :teams
    resources :members
    resources :socials
    resources :social_types
    resources :comments
    resources :classifications

    root to: "users#index"
  end

  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end

  draw(:api)
  draw(:frontend)

  root 'landing#index'
end
