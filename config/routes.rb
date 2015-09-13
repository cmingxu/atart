Rails.application.routes.draw do


  resources :users, only: [:show]
  resources :events, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :artworks, only: [:show]
  resources :channels, only: [:show]
  resources :fund_raisings, only: [:show]
  resources :fund_raise_supports, only: [:create, :show] do
    member do
      patch :notify
    end
  end

  resources :orders, only: [:new, :create, :show] do
    member do
      get :confirm_order_page
      patch :confirm_order
      post :notify
    end

    collection do
      patch :add_cart
      patch :delete_cart
      get   :cart
    end
  end

  resource :discover do
    collection do
      get :base
      get :hot
      get :channel
      get :fund_raising
      get :shop
    end
  end


  namespace :admin do
    get '/' => "base#index"
    get '/statistics' => 'base#statistics'
    resources :artworks do
      patch :toggle, on: :member
      patch :hot, on: :member
    end
    resources :artists
    resources :products do
      patch :toggle, on: :member
    end
    resources :users do
      member do
        patch :make_artist
      end
    end
    resources :messages
    resources :bookmarks
    resources :orders do
      member do
        patch :ship
      end
    end
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
    resources :fund_raisings do
      resources :fund_raise_supports
      member do
        patch :toggle
      end
    end
  end

  namespace :dashboard do
    get '/' => "base#index"
    get 'base/index'
    get 'settings' => 'base#settings'

    patch "update_avatar" => 'base#update_avatar'
    patch "change_password" => 'base#change_password'

    resources :fund_raisings do
      resources :fund_raise_supports
      resources :fund_raising_terms
    end
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

  get 'me' => 'welcome#me'
  
  # START Template Route for static page. START

  get 'location' => 'welcome#location'
  get 'onsite-detail' => 'welcome#onsitepage'
  get 'channel-detail' => 'welcome#channelpage'
  get 'raise-detail' => 'welcome#raise_detail'
  get 'work-detail' => 'welcome#workdetail'
  get 'create-order' => 'welcome#create_order'
  get 'cart' => 'welcome#cart'
  get 'order-finish' => 'welcome#order_finish'
  # user center
  get 'user-post' => 'welcome#user_center'
  get 'user-order' => 'welcome#user_order'
  get 'user-following' => 'welcome#user_following'
  get 'user-favs' => 'welcome#user_favs'
  get 'user-message' => 'welcome#user_message'

  # END Template Route for static page END

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registraions: 'users/registraions'
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
