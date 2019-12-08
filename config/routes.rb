Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[show new create edit update destroy]

  resources :trails, except: [:index] do
    member do
      get :list_activity
    end
    resources :activities, only: %i[index new create edit update destroy]
    resources :lists, only: %i[new create edit update destroy]
    resources :collabs, only: [:destroy]
  end

  # Creating api to fetch items from categories
  resources :categories, only: [:show] do
    resources :items, only: [:index]
  end

  resources :activities, only: [:show]

  resources :lists, only: [:show] do
    resources :list_items, only: %i[update destroy]
  end

  resources :list_items, only: [:show] do
    resources :delegations, only: %i[create destroy]
  end
end
