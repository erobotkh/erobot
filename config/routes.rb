Rails.application.routes.draw do
  namespace :admin do
    resources :comments
    resources :members
    resources :posts
    resources :social_types
    resources :socials
    resources :taxons
    resources :taxonomies
    resources :teams
    resources :timelines
    resources :users
    resources :organizations

    root to: "users#index"
  end

  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end

  draw(:api)
  draw(:frontend)

  root 'landing#index'
end
