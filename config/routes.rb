Paidan::Application.routes.draw do
  resources :docs
    
  resources :deliveries do
    collection do
      get 'deliverying'
      get 'delivered'
      
      get 'edit_delivery'
      post 'save_address'
      post 'shipping_in_volume'
      
      get 'print_expresses'
      get 'print_goods'
    end
  end

  resources :customers do
    collection do 
      get 'level_setting'
      post 'save_level_setting'
    end
  end

  resources :products do
    member do
    end
    
    collection do
      get 'select_category'
      get 'category_children'
    end
  end

  resources :suppliers do
    member do
      get 'follow'
      put 'save_follow'
    end
  end
  
  resources :tasks do
  end
  
  resources :orders do
    member do
      get 'check'
      put 'save_check'
      
      get 'page'
      put 'save_page'

      get 'toggle_pass'
    
      post 'close'
    end
    
    collection do 
      get 'waiting_pay'
      get 'waiting_delivery'
      get 'delivery'
      get 'refunding'
      get 'successed'
      get 'need_comment'
      get 'closed'
      get 'three_months_ago'
      
      get 'delivery'
      
      get 'sync'
      get 'do_sync'
      
      get 'update_ship_fee'
      get 'remark'
    end
  end
  
  resources :auth do
    collection do 
      get 'bind_jingdong'
      get 'bind_taobao'
      get 'bind_paipai'
      get 'bind_yihaodian'
      get 'bind_vjia'
    end
  end
  
  resources :dashboard do
    collection do
      get 'recent_datas'
    end
  end
  
  scope 'settings' do
    resources :shops
    resources :delivery_templates
  end
    
  resources :partners
  
  match 'login' => 'partners#login', :as => :login
  match 'check_login' => 'partners#check_login', :as => :check_login
  match 'register' => 'partners#register'
  match 'logout' => 'partners#logout', :as => :logout  

  match 'import' =>  'orders#import'
  match 'do_import' => 'orders#do_import'
  match 'import_sent' =>  'orders#import_sent'
  match 'do_import_sent' => 'orders#do_import_sent'
  
  match 'taobao_callback' => 'auth#taobao_callback'
  match 'paipai_callback' => 'auth#paipai_callback'
  match 'jingdong_callback' => 'auth#jingdong_callback'
  
  root :to => 'dashboard#index'

end
