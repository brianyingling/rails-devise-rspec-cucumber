RailsDeviseRspecCucumber::Application.routes.draw do
  get "users/index"
  get "users/show"
  # get "home/index"

  # get 'users/:id', :to =>'users#index', :as => :user
  # resources :users, :only => [:show]

  # authenticated users -- those logged in and
  # have an account -- will see the home page
  # By default, Devise will redirect to the
  # root_path after successful sign in/out
  authenticated :user do
    root :to => 'users#index', :as => :authenticated_root
  end

  # all other users (those not logged in)
  # NOTE: As of Rails 4, you can't have two routes routing
  # to the same controller#method.
  root :to => 'home#index'

  # routes for devise registrations, sessions, as well as standard user
  devise_for :users

  # standard routes after devise implements its own routing
  # place this before so devise doesn't override anything
  resources :users
end
