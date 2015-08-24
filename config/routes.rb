Rails.application.routes.draw do
  resources :events, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :orders, only: [:new, :create, :show] do
    member do
      get :confirm_order_page
      patch :confirm_order
      post :notify
    end
  end

  resource :discover do
    collection do
      get :hot
      get :channel
      get :fund_raising
      get :shop
    end
  end


  namespace :admin do
    get '/' => "base#index"
    get '/statistics' => 'base#statistics'
    resources :artworks
    resources :artists
    resources :products do
      patch :toggle, on: :member
    end
    resources :users
    resources :messages
    resources :bookmarks
    resources :orders
    resources :channels_artworks
    resources :channels do
      patch :toggle, on: :member
    end
    resources :events do
      delete :remove_marker, on: :member
      post :add_marker, on: :member
      patch :toggle, on: :member
    end
    resources :comments
  end

  namespace :dashboard do
    get '/' => "base#index"
    get 'base/index'
    get 'settings' => 'base#settings'

    patch "update_avatar" => 'base#update_avatar'
    patch "change_password" => 'base#change_password'

    resources :messages
    resources :artworks
    resources :orders
    resources :bookmarks
    resources :users do
      member do
        patch :toggle_visible
      end
    end
  end

  get 'onsite' => 'welcome#onsite'
  get 'me' => 'welcome#me'
  get 'location' => 'welcome#location'
  get 'onsite-detail' => 'welcome#onsitepage'
  get 'channel-detail' => 'welcome#channelpage'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
