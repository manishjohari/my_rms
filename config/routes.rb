Hrms::Application.routes.draw do
  

  

 namespace :admin do
 	resources :announcements 
 	resources :users
 	resources :payrolls
 	
 end
#  devise_for :admins

  get "leaves/new"

  get "leaves/edit"

  get "leaves/show"

  get "leaves/index"

  get "userleaves/new"

  get "userleaves/edit"

  get "userleaves/show"

  get "userleaves/index"

  get "userleaves/myleave"
  
  get "userleaves/leavesummary"
   
  get "users/company_info_general"
  
  get "users/show_user"
  
  get "users/salary_structure"
  
 #get  "users/_admin_form"

    
  devise_for :users
  #devise_for :users, :path => "usuarios", :path_names => { :sign_in => 'login', :sign_out => 'logout' }
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
		resources :users
		#resources :announcements
		resources :userleaves
         

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
  #  resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
     root :to => "home#index"

  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
