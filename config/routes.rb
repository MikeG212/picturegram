Rails.application.routes.draw do
  get 'follows/create'
  get 'follows/destroy'
  root "static_pages#root"
  
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :update, :destroy, :show, :index] do
      collection do
        get :search
      end
      resources :posts, only: :index
    end
    resource :session, only: [:create, :destroy]
    resources :posts, only: [:create, :show, :index] do
      resources :comments, only: :index
    end
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    
  end
end 