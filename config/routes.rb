Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [ :edit, :update ] do
    resources :jobs, only: [ :show, :index ]
  end

  resources :jobs, only: [ :index ]

  namespace :business do
    resources :jobs, only: [ :index, :create, :new, :edit, :update ] do
      resources :job_contracts, only: [ :index, :create, :new, :edit, :update ] do
        member do
          patch 'accept'
          patch 'decline'
          patch 'pending'
        end
      end
    end
    resources :job_contracts, only: [ :index ]
  end
end
