Rails.application.routes.draw do
  resources :leases
  resources :properties
  resources :tenants
  devise_for :users
  get 'docs/:file_name' => 'docs#show', as: :doc

  root 'docs#index'

end
