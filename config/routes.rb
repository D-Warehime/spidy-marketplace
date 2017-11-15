Rails.application.routes.draw do
  authenticated do
    root to: 'jobs#index'
  end
  root to: 'pages#home'

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resource :profile, only: [:show, :edit, :update]


  resources :jobs, only: [ :index, :show ] do
    resources :job_contracts, only: [ :create, :new, :edit, :update ]
  end

  resources :companies, only: [ :show]
  resources :job_contracts, only: [ :index ]

  namespace :business do
    resources :jobs, only: [ :index, :create, :new, :edit, :update, :destroy ] do
      resources :job_contracts, only: [ :index ]
    end

    resources :job_contracts, only: [ :index ] do
      member do
        patch 'accept'
        patch 'decline'
        patch 'pending'
      end
    end
  end
end
