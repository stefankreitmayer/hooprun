Rails.application.routes.draw do
  resources :runs, only: [:new, :create, :show, :edit, :update]
  root 'welcome#index'
end
