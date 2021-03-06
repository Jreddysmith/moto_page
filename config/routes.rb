Rails.application.routes.draw do

  root 'mainpages#index'

              # EVENTS ROUTES
  get 'events'              => 'events#index'
  post 'events'             => 'events#create'

  get 'eventdetails/:id'    => 'eventdetails#index'

              # FLAHBACKS ROUTES
  get 'flashbacks'          => 'flashbacks#index'
  post 'flashbacks'         => 'flashbacks#create'

  get 'flashbackdetails/:id'    => 'flashbackdetails#index'

              # GARAGES ROUTES
  get 'garages'             => 'garages#index'
  post 'garages'            => 'garages#create'

  get 'garagedetails/:id'   => 'garagedetails#index'

              # NUTRITIONS ROUTES
  get 'nutritions'          => 'nutritions#index'
  post 'nutritions'         => 'nutritions#create'

  get 'nutritiondetails/:id'=> 'nutritiondetails#index'

  get 'nutrition_votes/:id' => 'nutrition_votes#create'

              # SPONSORS ROUTES
  get 'sponsors'            => 'sponsors#index'
  post'sponsors'            => 'sponsors#create'

  get 'sponsordetails/:id'      => 'sponsordetails#index'

              # TOYTRACKS ROUTES
  get 'toytracks'           => 'toytracks#index'

  get 'toytrackdetails'     => 'toytrackdetails#index'

              # TRAININGS ROUTES
  get 'trainings'           => 'trainings#index'
  post 'trainings'          => 'trainings#create'  

  get 'trainingdetails/:id' => 'trainingdetails#index'
  get 'training_votes/:id'  => 'training_votes#create'

              # YARDSALES ROUTES
  get 'yardsales'           => 'yardsales#index'

  get 'yardsaledetails'     => 'yardsaledetails#index'

              # HOMEPAGES ROUTES
  get 'homepages'           => 'homepages#index'

              # USERS ROUTES
  post 'users'              => 'users#create'

  post 'sessions'           => 'sessions#create'
  delete '/sessions'        => 'sessions#destroy'


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
