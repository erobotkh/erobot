Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :users, only: %i[create]
      resources :taxonomies, only: %i[index show]
      resources :taxons, only: %i[index show]
      resources :posts, only: %i[index show]
      resources :comments, only: %i[index]
      resources :teams, only: %i[index show]
      resources :members, only: %i[index show] do
        resources :timelines, only: %i[index]
      end
    end
  end
end
