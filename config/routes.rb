Rails.application.routes.draw do
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :excuses, only: [:index, :show] do
      collection do
        get :random
      end
    end
  end
end
