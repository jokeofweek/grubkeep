Grubkeep::Application.routes.draw do
  # Generate standard sign_in, sign_out paths
  devise_for :users

  namespace :api, defaults: {format: :json} do
    devise_scope :user do
      resource :session, only: [:create, :destroy]
    end
    resources :recipe_list, only: [:index] do
      resources :recipe, only: [:index, :create, :update, :destroy]
    end
  end

  root :to => "home#index"
  get '/dashboard' => 'dashboard#index'

end
