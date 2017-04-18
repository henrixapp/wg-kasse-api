Rails.application.routes.draw do
  mount_devise_token_auth_for 'Author', at: 'auth'
  #devise_for :authors
  resources :authors
  resources :billing_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
