Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create]
    resources :restaurants, only: [:index, :show]
    resources :reviews, only: [:create, :show]
    resource :session, only: [:create, :destroy, :show]
    resources :searches, only: [:show]
  end

  get "*path", to: "static_pages#root"
  root "static_pages#root"
end
