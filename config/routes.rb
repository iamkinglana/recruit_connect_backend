Rails.application.routes.draw do
  resources :saved_jobs
  resources :applications
  resources :jobs
  resources :employers
  resources :job_seekers
  resources :users
  # resources :saved_jobs
  # resources :applications
  # resources :jobs
  # resources :employers

  # resources :job_seekers
  # resources :employers,only: [:index, :show, :create]

  # resources :users
  # resources :jobs, only: [:index, :show] do
  #   resources :applications,only: [:create]
  #   resources :saved_jobs, only: [:create]
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/hello', to: 'application#hello_world'
  # post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'
  # get '/me', to: 'users#show'
  # get '/saved_jobs/:id', to: 'users#saved_jobs'

  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }


end
