Rails.application.routes.draw do

  root to: 'home#show'

  resources :playlists, only: [:new, :create, :show]

end
