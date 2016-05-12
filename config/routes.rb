Rails.application.routes.draw do
  root 'consults#index'
  resources :consults
end
