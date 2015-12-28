Rails.application.routes.draw do
    
    devise_for :users, :controllers => { registrations: "registrations" }
    
    root "posts#all"

    resources :users, only: [] do
        resources :posts do
            resources :subscribers, only: [:new, :create]
        end
    end

    resources :posts, except: [:edit, :update] do
      resources :subscribers, only: [:new, :create]
    end
    
    get "/users/:user_id" => "posts#dashboard", :as => :user

    get "/recent" => "posts#all_recent", :as => :recent

    get "/tags/facts" => "tags#facts", :as => :tags_facts
    get "/tags/jokes" => "tags#jokes", :as => :tags_jokes
    get "/tags/quotes" => "tags#quotes", :as => :tags_quotes

    get "/tags/facts/recent" => "tags#facts_recent", :as => :tags_facts_recent
    get "/tags/jokes/recent" => "tags#jokes_recent", :as => :tags_jokes_recent
    get "/tags/quotes/recent" => "tags#quotes_recent", :as => :tags_quotes_recent

    get "/random" => "posts#random", :as => :random

    get "/users/:user_id/profile" => "posts#profile", :as => :user_profile

    resources :contact_forms

    resources :notifications 
    
    get "/posts/:id/edit" => "posts#edit_admin"
    put "/posts/:id" => "posts#update_admin"


    
    
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
