Rails.application.routes.draw do
  root to: 'home#index'
  resources :home

  resources :risk_areas
  devise_for :members
  resources :locais
  resources :users
  resources :login
  resources :cadastro

  get 'importar' => "risk_areas#csv_import"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
