Rails.application.routes.draw do
  root to: 'home#index'
  namespace :api do
    root to: 'requests#index'
  end
end
