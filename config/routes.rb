Rails.application.routes.draw do
  get "/dashboard", to: 'dashboards#dashboard'
  get "/dashboard_institution", to: 'dashboards#dashboard_institution'
  resources :filters, only: [:index]
  resources :offers do
    resources :requests, only: [:new, :create]
    resources :bookmarks, only: [:create, :destroy]
  end
  resources :requests, only: [:show]
  resources :bookmarks, only: [:index]
  devise_for :users
  root to: 'pages#home'
end
