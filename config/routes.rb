# frozen_string_literal: true

Rails.application.routes.draw do
  resources :movie_ratings, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  get '/user-ratings' => 'movie_ratings#index_user'
end
