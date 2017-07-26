Rails.application.routes.draw do
  ActiveAdmin.routes(self)
 mount Attachinary::Engine => "/attachinary"

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

    resources :users, only: [:index, :show]


  resources :spaces do
    resources :events, only: [:new, :create, :show, :destroy, :edit, :update]

  end

  resources :bookings, only: [] do
    resources :payments, only: [:create]
  end

resources :events, only: [:index, :edit, :update] do
  resources :reviewevents, only: :create
  resources :messages, only: [:index, :create, :show]
end

  patch "/confirm", to: "events#confirm", as: "confirm"







  root to: 'spaces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
