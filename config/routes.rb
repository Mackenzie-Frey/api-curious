Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :users, only: [:show]

  get "/auth/github/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
end
