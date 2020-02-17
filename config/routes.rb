# frozen_string_literal: true

Rails.application.routes.draw do
  get 'about', to: 'about#index'
  get 'home', to: 'home#index'
  root 'home#index'
  resources :contacts
end
