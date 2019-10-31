# frozen_string_literal: true

Rails.application.routes.draw do
  get 'customers/' => 'customers#index', as: 'customers'
  get 'customers/alphabetized' => 'customers#alphabetized', as: 'alphabetized'
  get 'customers/missing_email' => 'customers#missing_email', as: 'missing_email'

  # resources :customers, only: %i[index]

  root to: 'customers#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
