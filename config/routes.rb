Rails.application.routes.draw do

  get '/contacts', to: 'contacts#new'

  resources :contacts, only: [:new, :create]

  resources :studios

  #post 'studio/new', to do 'studio#new'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'
end
