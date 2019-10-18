Rails.application.routes.draw do
  
  
  devise_for :users
  resources :foodplaces do 
    resources :comments, only:[:create, :destroy, :update]
    resources :foods, only:[:create, :destroy, :update]
  end
  get 'welcome/index'
  root 'welcome#index'
end
