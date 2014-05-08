KsuWebsite::Application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"  
  resources :sessions, only: [:create]  
  resources :users, only: [:create]
  
  resources :courses, only: [:index]
  resources :employments, only: [:index]
  resources :faculties, only: [:index]
  resources :clubs, only: [:index]
  resources :events, only: [:index]
  
  namespace :admin do 
    get '', to: 'dashboard#index', as: '/' 
	resources :courses
    resources :employments
    resources :faculties
    resources :clubs
    resources :events
	resources :users
  end

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get '/welcome', to: 'welcome#index'
  get '/about', to: 'about#index'
  get '/courses', to: 'courses#index'
  get '/employments', to: 'employments#index'
   
   
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
