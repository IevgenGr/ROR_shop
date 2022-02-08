Rails.application.routes.draw do

  root 'pages#home', as: 'home'
  get 'search', to: 'pages#search', as: 'search'
  get 'pages/categories/:id' => "pages#category" , as: 'category'
  get '/products', to: 'products#index', as: 'products'
  resources :products

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
