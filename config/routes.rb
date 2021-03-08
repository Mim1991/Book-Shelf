Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :show, :create, :update]

  resources :users, only: [:show] do
    resources :friendships, only: [:create]
    post "/friendships/add", to: "friendships#add"
    post "/friendships/reject", to: "friendships#reject"
    post "/friendships/remove", to: "friendships#remove"
  end
  
  get '/search' => 'books#search'
end
