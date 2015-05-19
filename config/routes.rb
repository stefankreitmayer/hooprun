Rails.application.routes.draw do
  resources :runs
  root 'welcome#index'
end
