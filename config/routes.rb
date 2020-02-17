# frozen_string_literal: true

Rails.application.routes.draw do
  resources :reports
  resources :contacts
  get 'about', to: 'about#index'
  get 'home', to: 'home#index'
  root 'home#index'
end
