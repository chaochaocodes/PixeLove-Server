Rails.application.routes.draw do
  resources :users
  resources :cells
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
