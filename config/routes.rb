Rails.application.routes.draw do
  ActiveAdmin.routes(self)
 mount Attachinary::Engine => "/attachinary"

  resources :spaces do
    resources :events, only: [:new, :create]



  end


  resources :events, only: [:show, :index, :destroy] do
    resources :reviewevents, only: :create
  end


  devise_for :users

  root to: 'spaces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
