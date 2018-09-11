Rails.application.routes.draw do
  root 'tasks#index'
  devise_for :users
  #root 'tasks#index', :as => :user_root
  resources :tasks do
    member do
      post "finish"
      post "unfinish"
    end

    collection do
      get 'done'
    end
  end
end
