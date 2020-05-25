Rails.application.routes.draw do
  resources :handovers
  resources :leases
  resources :mandates
  resources :properties
  resources :buildings
  resources :cities
  resources :tenants
  resources :landlords
  resources :landlord_types
  resources :tenant_types
  resources :property_types
  resources :profiles
  resources :services
  devise_for :users
  resources :permissions
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
