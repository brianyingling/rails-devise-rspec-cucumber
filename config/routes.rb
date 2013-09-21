RailsDeviseRspecCucumber::Application.routes.draw do
  get "users/index"
  get "users/show"
  # get "home/index"

  # resources :users

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

  devise_for :users

end
