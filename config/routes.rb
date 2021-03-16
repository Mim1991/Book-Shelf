Rails.application.routes.draw do
  get 'activities/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :show, :create, :update] do 
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  resources :users, only: [:show] do
    resources :friendships, only: [:create]
    post "/friendships/add", to: "friendships#add"
    post "/friendships/reject", to: "friendships#reject"
    post "/friendships/remove", to: "friendships#remove"
  end

  resources :activities
  resources :users, only: [:index]
  resources :friendships, only: [:index]
  get "/friendships/requests", to: "friendships#requests"
  get '/search' => 'books#search'
  
end
