# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :v1, constraints: ApiVersion.new('v1', default: true) do
    resources :excuses, only: %i[index show] do
      collection do
        get :random
      end
    end

    root to: 'excuses#random'
  end
end
