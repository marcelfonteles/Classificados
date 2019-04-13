Rails.application.routes.draw do
  namespace :backoffice do
    get '', to: 'dashboard#index'
    get 'categories', to: 'categories#index'
  end
  root 'site/home#index'
  namespace :site do
    get 'home/index'
    get 'example', to: 'home#example'
    get 'ad/:id', to: 'home#ad'
    get 'category/:category_id', to: 'home#ad_by_category'
  end
  
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  
  devise_for :members, controllers: {
    sessions: 'members/sessions'
  } 
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
