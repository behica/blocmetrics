Rails.application.routes.draw do
  resources :registered_applications

  devise_for :users

  get 'about' => 'welcome#index'

  root 'welcome#index'
end
