Rails.application.routes.draw do
  get :login, to: 'sessions#new'
  scope module: :sessions do
    post :login
    delete :logout
  end
  resources :users
  resources :cities
  resources :countries
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "countries#index"
end
