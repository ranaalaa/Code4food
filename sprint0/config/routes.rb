Rails.application.routes.draw do
  devise_for :users
   get 'welcome/index'
   get 'welcome/Aboutus'
   # get 'welcome/HomePage'
   match '/HomePage' => 'welcome#HomePage', via: [:get]
      match '/Contactus' => 'welcome#Contactus', via: [:get]
         match '/AyaMagdyProfile' => 'welcome#AyaMagdyProfile', via: [:get]
            match '/DoniaMagdyProfile' => 'welcome#DoniaMagdyProfile', via: [:get]
               match '/HananGhannamProfile' => 'welcome#HananGhannamProfile', via: [:get]
                  match '/JalaAshrafProfile' => 'welcome#JalaAshrafProfile', via: [:get]
                     match '/MayadaTarekProfile' => 'welcome#MayadaTarekProfile', via: [:get]
   match '/SalmaAdelProfile' => 'welcome#SalmaAdelProfile', via: [:get]
      match '/Team' => 'welcome#Team', via: [:get]
         match '/RanaAlaaProfile' => 'welcome#RanaAlaaProfile', via: [:get]
            match '/Projects' => 'welcome#Projects', via: [:get]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
   #root :controller => 'static', :action => '/public/Company Profile/HomePage.html'
 root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
   resources :articles do
    resources :comments, :only => [:create]
    
end
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