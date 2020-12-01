Rails.application.routes.draw do
  devise_for :users
  root to: 'reports#index'
  resources :reports do
    collection do
      get 'search'
    end
  end
end
