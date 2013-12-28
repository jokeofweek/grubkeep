Grubkeep::Application.routes.draw do
  # Generate standard sign_in, sign_out paths
  devise_for :users

  namespace :api, defaults: {format: :json} do
    devise_scope :user do
      resource :session, only: [:create, :destroy]
    end
    resources :recipe, only: [:index, :show, :create, :update, :destroy]
  end

  root :to => "home#index"
  get '/dashboard' => 'dashboard#index'

end
