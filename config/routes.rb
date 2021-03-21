Rails.application.routes.draw do
  get 'activities/index'
  devise_for :users
  root to: 'pages#home'

  resources :books, only: [:index, :show, :create, :update, :destroy] do 
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  resources :users, only: [:show] do
    resources :friendships, only: [:create]
    post "/friendships/add", to: "friendships#add"
    post "/friendships/reject", to: "friendships#reject"
    post "/friendships/remove", to: "friendships#remove"
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :activities
  resources :friendships, only: [:index]

  get "/browse_users", to: "users#browse_users"
  get "/friendships/requests", to: "friendships#requests"
  get '/search', to: 'books#search'
  
end
