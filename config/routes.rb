# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'short_urls#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
