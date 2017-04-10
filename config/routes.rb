Rails.application.routes.draw do

  root to: 'home#show'

  resources :playlists, only: [:index, :new, :create, :show] do
    resources :songs, only: [:index, :new, :create]
  end

  # resources :songs, only: [:new, :create]

end
