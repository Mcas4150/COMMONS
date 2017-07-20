Rails.application.routes.draw do
  ActiveAdmin.routes(self)
 mount Attachinary::Engine => "/attachinary"

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  resources :spaces do
    resources :events, only: [:new, :create]
  end


  resources :events, only: [:show, :index, :destroy]




  root to: 'spaces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
