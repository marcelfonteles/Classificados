Rails.application.routes.draw do
  root 'site/home#index'
  namespace :site do
    get 'home/index'
    get 'example', to: 'home#example'
  end
  
  namespace :backoffice do
    #get 'dashboard' => 'dashboard#index'
    get '', to: 'dashboard#index'
  end
  
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  
  devise_for :members, controllers: {
    sessions: 'members/sessions'
  } 
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
