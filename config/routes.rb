Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root 'users#index'
  resources :users
  resources :wall_posts, only: %w(create destroy)
  resources :products
  resources :reviews
  # method 1
  resources :likes, only: %w(create)

  # method 2
  get '/wall_posts/:id/like', to: 'wall_posts#like', as: 'wall_post_like'
  get '/wall_posts/:id/dislike', to: 'wall_posts#dislike', as: 'wall_post_dislike'

  # method 3
  get '/likessss/:wall_post_id/:like_action', to: 'likes#modify', as: 'wall_post_modify'

  post '/users/search', to: 'users#search', as: 'search_users'
  post '/wall_posts/search', to: 'wall_posts#search', as: 'search_wall_posts'

  namespace :admin do
    resources :users, only: [:index]
    resources :products, only: [:index, :new, :edit]
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
