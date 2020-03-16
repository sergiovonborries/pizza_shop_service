Rails.application.routes.draw do
  
  resources :production_processes
  namespace :api do
    namespace :v1 do
      resources :pizzas
      resources :ingredients
      resources :toppings
      resources :pizza_sizes
      resources :pizza_items
      resources :order_items
      resources :orders
      resources :other_product_items
      resources :other_products
      resources :deliveries
      
      get 'get_cheeses' => 'pizza_items#get_cheeses'
      get 'get_crusts' => 'pizza_items#get_crusts'
      get 'get_sauces' => 'pizza_items#get_sauces'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
