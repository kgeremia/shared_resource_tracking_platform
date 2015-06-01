Rails.application.routes.draw do
  root "networks#index"

  # Routes for the School resource:
  # CREATE
  get "/schools/new", :controller => "schools", :action => "new"
  post "/create_school", :controller => "schools", :action => "create"

  # READ
  get "/schools", :controller => "schools", :action => "index"
  get "/schools/:id", :controller => "schools", :action => "show"

  # UPDATE
  get "/schools/:id/edit", :controller => "schools", :action => "edit"
  post "/update_school/:id", :controller => "schools", :action => "update"

  # DELETE
  get "/delete_school/:id", :controller => "schools", :action => "destroy"
  #------------------------------

  # Routes for the Network resource:
  # CREATE
  get "/networks/new", :controller => "networks", :action => "new"
  post "/create_network", :controller => "networks", :action => "create"

  # READ
  get "/networks", :controller => "networks", :action => "index"
  get "/networks/:id", :controller => "networks", :action => "show"

  # UPDATE
  get "/networks/:id/edit", :controller => "networks", :action => "edit"
  post "/update_network/:id", :controller => "networks", :action => "update"

  # DELETE
  get "/delete_network/:id", :controller => "networks", :action => "destroy"
  #------------------------------

  # Routes for the Meeting resource:
  # CREATE
  get "/meetings/new", :controller => "meetings", :action => "new"
  post "/create_meeting", :controller => "meetings", :action => "create"

  # READ
  get "/meetings", :controller => "meetings", :action => "index"
  get "/meetings/:id", :controller => "meetings", :action => "show"

  # UPDATE
  get "/meetings/:id/edit", :controller => "meetings", :action => "edit"
  post "/update_meeting/:id", :controller => "meetings", :action => "update"

  # DELETE
  get "/delete_meeting/:id", :controller => "meetings", :action => "destroy"
  #------------------------------

  # Routes for the Teacher resource:
  # CREATE
  get "/teachers/new", :controller => "teachers", :action => "new"
  post "/create_teacher", :controller => "teachers", :action => "create"

  # READ
  get "/teachers", :controller => "teachers", :action => "index"
  get "/teachers/:id", :controller => "teachers", :action => "show"

  # UPDATE
  get "/teachers/:id/edit", :controller => "teachers", :action => "edit"
  post "/update_teacher/:id", :controller => "teachers", :action => "update"

  # DELETE
  get "/delete_teacher/:id", :controller => "teachers", :action => "destroy"
  #------------------------------

  # Routes for the Attendance resource:
  # CREATE
  get "/attendances/new", :controller => "attendances", :action => "new"
  post "/create_attendance", :controller => "attendances", :action => "create"

  # READ
  get "/attendances", :controller => "attendances", :action => "index"
  get "/attendances/:id", :controller => "attendances", :action => "show"

  # UPDATE
  get "/attendances/:id/edit", :controller => "attendances", :action => "edit"
  post "/update_attendance/:id", :controller => "attendances", :action => "update"

  # DELETE
  get "/delete_attendance/:id", :controller => "attendances", :action => "destroy"
  #------------------------------

  # Routes for the Resource resource:
  # CREATE
  get "/resources/new", :controller => "resources", :action => "new"
  post "/create_resource", :controller => "resources", :action => "create"

  # READ
  get "/resources", :controller => "resources", :action => "index"
  get "/resources/:id", :controller => "resources", :action => "show"

  # UPDATE
  get "/resources/:id/edit", :controller => "resources", :action => "edit"
  post "/update_resource/:id", :controller => "resources", :action => "update"

  # DELETE
  get "/delete_resource/:id", :controller => "resources", :action => "destroy"
  #------------------------------

  # Routes for the Theme resource:
  # CREATE
  get "/themes/new", :controller => "themes", :action => "new"
  post "/create_theme", :controller => "themes", :action => "create"

  # READ
  get "/themes", :controller => "themes", :action => "index"
  get "/themes/:id", :controller => "themes", :action => "show"

  # UPDATE
  get "/themes/:id/edit", :controller => "themes", :action => "edit"
  post "/update_theme/:id", :controller => "themes", :action => "update"

  # DELETE
  get "/delete_theme/:id", :controller => "themes", :action => "destroy"
  #------------------------------

  devise_for :users
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
