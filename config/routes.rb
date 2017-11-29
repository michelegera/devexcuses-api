Rails.application.routes.draw do
  resources :excuses, only: [:index, :show] do
    collection do
      get :random
    end
  end
end
