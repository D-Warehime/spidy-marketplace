Rails.application.routes.draw do
  authenticated do
    root to: 'jobs#index'
  end
  root to: 'pages#home'

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # resource :profile, only: [ :show, :edit, :update ]
  get 'profile/:id', to: "profiles#show", as: "profile"
  get 'profile/:id/edit', to: "profiles#edit", as: "edit_profile"
  put 'profile/:id', to: "profiles#update"


  resources :jobs, only: [ :index, :show ] do
    resources :job_contracts, only: [ :new, :create, :edit, :update ]
  end

  resources :companies, only: [ :show ]

  namespace :business do
    resources :jobs, only: [ :index, :new, :create, :edit, :update, :destroy ] do
      resources :job_contracts, only: [ :index ]
    end

    resources :job_contracts, only: [ :index, :destroy ] do
      member do
        patch 'accept'
        patch 'decline'
        patch 'pending'
      end
    end
  end
end
