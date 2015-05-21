Rails.application.routes.draw do
  resources :runs, only: [:new, :create, :show, :edit, :update]
  post 'runs/jump' => 'runs#jump'
  root 'welcome#index'
end
