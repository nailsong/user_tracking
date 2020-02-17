# frozen_string_literal: true

Rails.application.routes.draw do
  resources :contacts, only: %i[new create show]
  get 'about', to: 'about#index'
  get 'home', to: 'home#index'
  get 'reports', to: 'reports#index'
  post 'reports', to: 'reports#create'
  root 'home#index'
end
