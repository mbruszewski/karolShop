# -*- encoding : utf-8 -*-
KarolShop::Application.routes.draw do

  resources :regulamins
  resources :products
  resources :categories
  resources :orders
  resources :addresses
	resources :users
	resources :main
	resources :sessions
	resources :order_items
	resources :versions
	resources :models	
	resources :companies
	resources :brands
  resources :offert
  resources :products_cars

	root to: "main#index"

	match "/login" => "sessions#new", as: :login
	match "/logout" => "sessions#destroy", as: :logout

  match "/polish" => "languages#polish", as: :polish
  match "/english" => "languages#english", as: :english

  match "/regulamin" => "regulamins#reg_page", as: :reg_page

  match "/submit" => "orders#submit_order", as: :submit
  match "/increase" => "orders#increase_count", as: :increase
  match "/decrease" => "orders#decrease_count", as: :decrease
  match "/delete_item" => "orders#remove_order_item", as: :delete_item

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
