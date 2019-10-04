Rails.application.routes.draw do
  namespace :api do
    root to: 'requests#index'
  end
end
