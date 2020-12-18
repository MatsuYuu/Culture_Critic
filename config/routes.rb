Rails.application.routes.draw do
  devise_for :users
  root to: "comments#index"
  resources :comments do
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  
end