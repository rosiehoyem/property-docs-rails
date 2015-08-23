Rails.application.routes.draw do
  devise_for :users
  get 'docs/:file_name' => 'docs#show', as: :doc

  root 'docs#index'

end
