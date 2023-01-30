# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'short_urls#index'
  get '/:id', to: 'short_urls#show', constraints: { id: /[A-Za-z0-9_.-]+/ }, as: :short_url
  resources :short_urls, only: [:create] do
    member do
      get :qr_code, as: :qr_code
    end
  end
end
