Rails.application.routes.draw do

  devise_for :users

  root "critiques#index"

# ANIKET USER ROUTES TO FIND AND RANSACK USERS
  get "/users", :controller => "users", :action => "index"

  # Routes for the Critique resource:
  # CREATE
  get "/critiques/new", :controller => "critiques", :action => "new"
  post "/create_critique", :controller => "critiques", :action => "create"

  # READ
  get "/critiques", :controller => "critiques", :action => "index"
  get "/critiques/:id", :controller => "critiques", :action => "show"

  # UPDATE
  get "/critiques/:id/edit", :controller => "critiques", :action => "edit"
  post "/update_critique/:id", :controller => "critiques", :action => "update"

  # DELETE
  get "/delete_critique/:id", :controller => "critiques", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
