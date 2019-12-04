Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :trails do
    member do
      get :list_activity
    end
    resources :activities, except: [:index]
    resources :lists, except: [:index]
  end

  resources :users, only: [:show, :new, :create, :destroy] do
  end
end
