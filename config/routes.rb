Rails.application.routes.draw do
  root 'landing_pages#index'
  resources :owners do
    resources :articles
  end
  resources :articles
end
