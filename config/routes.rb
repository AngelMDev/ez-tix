Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "movies#index"
  resources :movies do
    resources :showings
  end
  resources :orders
  resources :auditoria
  get "as_admin", to: "sessions#as_admin"
  get "as_user", to: "sessions#as_user"
end
