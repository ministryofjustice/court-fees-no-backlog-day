Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :form_types

  resources :fee_types

  resources :fees

  root 'fees#index'

  get 'forms' => 'form_types#index'
end
