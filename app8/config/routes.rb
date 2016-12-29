Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root to: 'home#index', as: :authenticated_root
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies
  resources :plans  
  resources :customers
  resources :policies 
  resources :comments 
  resources :transactions
  resources :home
  resources :policy_documents
  resources :policy_documents do
    member do
      get "list"		
    end
  end
  resources :policies do
    member do
      get "policy_list"		
    end
  end
  resources :policies do
    member do
      post "policy_details"		
    end
  end
  resources :policies do
    member do
      post "policy_view"		
    end
  end
  resources :policies do
    member do
      post "check_data"		
    end
  end
  resources :policies do
    collection do
      get "cancel_policy"		
    end
  end
  resources :customers do
    member do
      get "surrender"		
    end
  end
  resources :transactions do
    member do
      get "send_mail"		
    end
  end
  resources :policies do
    member do
      get "send_mail"		
    end
  end
  resources :customers do
    member do
      get "send_mail"		
    end
  end
  resources :plans do
    member do
      get "list"		
    end
  end
  resources :policies do
    member do
      get "policy_details"		
    end
  end
  get "plans/download_pdf"
  root 'devise/sessions#new'
end