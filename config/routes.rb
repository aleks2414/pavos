Rails.application.routes.draw do
  
  
  get '/nosotros' => 'pages#nosotros'
  devise_for :users
  root 'welcome#index'

  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
