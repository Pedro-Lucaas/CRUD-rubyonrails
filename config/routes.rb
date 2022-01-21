Rails.application.routes.draw do
  devise_for :admins
  root 'welcome#index'
  resources :softwares
  resources :hardwares
  resources :orders, except: [:new, :edit]  
  resources :clients
  resources :vendors
  resources :addresses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
