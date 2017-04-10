Rails.application.routes.draw do

  root to: 'home#show'

  resources :playlists, only: [:index, :new, :create, :show]

end
