Rails.application.routes.draw do
  
  
  resources :products
  resources :events
  get '/nosotros' => 'pages#nosotros'
  get '/mis_eventos' => 'pages#eventos'
  get '/productos_saludables/menus' => 'pages#menus'
  get '/productos_saludables/de_temporada' => 'pages#temporada'
  get '/productos_saludables/postres_veganos' => 'pages#postres'
  get '/productos_saludables/todos_los_dias' => 'pages#diario'
  get '/productos_saludables/casa_gourmet' => 'pages#gourmet'
  get '/productos_saludables/bebidas' => 'pages#bebidas'
  devise_for :users
  root 'welcome#index'

  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
