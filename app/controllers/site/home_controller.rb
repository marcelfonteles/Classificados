class Site::HomeController < ApplicationController
  # Para o layout posso fazer um before_action e chamar um método. O método definirá qual layout carregar.
  
  # Definindo o layout
  layout 'site'
  
  def index
    @categories = Category.all
    @ads = Ad.all.order('id DESC')
  end
  
  def example
    @categories = Category.all
  end
  
end
