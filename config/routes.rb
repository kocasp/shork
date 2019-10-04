Rails.application.routes.draw do
  root to: 'api/requests#index'
  namespace :api do
    root to: 'requests#index'
  end
end
