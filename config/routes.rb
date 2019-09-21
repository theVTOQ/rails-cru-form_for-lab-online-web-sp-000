Rails.application.routes.draw do
  get 'songs/show'

  get 'genres/show'

  get 'artists/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:create, :update, :show]
  resources :genres, only: [:create, :update, :show]
  resources :songs, only: [:create, :update, :show]
end
