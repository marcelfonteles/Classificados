Rails.application.routes.draw do
  root 'site/home#index'
  
  namespace :backoffice do
    get '', to: 'dashboard#index'
    get 'categories', to: 'categories#index'
    get 'category/new', to: 'categories#new'
    post 'category/create', to: 'categories#create'
    get 'category/:id/', to: 'categories#list_ads', as: 'category_ads'
  end
  
  namespace :site do
    get 'home/index'
    get 'example', to: 'home#example'
    get 'ad/:id', to: 'home#ad'
    get 'category/:category_id', to: 'home#ad_by_category'
  end
  
  namespace :members do
    get 'index', to: 'members#index'
  end
  
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  
  devise_for :members, controllers: {
    sessions: 'members/sessions'
  } 
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
