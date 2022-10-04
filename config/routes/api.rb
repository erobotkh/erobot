Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :users, only: %i[create]
      resources :bookmarks, only: %i[index]
    end
  end
end
