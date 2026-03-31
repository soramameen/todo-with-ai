# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
  get '/todos', controller: 'todos', action: :index

  get '/todos/new', to: 'todos#new'
  post '/todos', to: 'todos#create'

  get '/todos/:id/edit', to: 'todos#edit'
  patch '/todos/:id', to: 'todos#update'
  put '/todos/:id', to: 'todos#update'

  get '/todos/:id', to: 'todos#show'

  delete '/todos/:id', to: 'todos#destroy'

  root "todos#index"
end
