# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'short_urls#index'
  get '/:id', to: 'short_urls#unpack', constraints: { id: /[A-Za-z0-9_.-]+/ }, as: :short_url
  resources :short_urls, only: %i[create show] do
    member do
      get :qr_code, as: :qr_code
    end
    collection do
      get :top100
    end
  end
end
