class Site::HomeController < ApplicationController
  before_action :find_ad, only: [:ad]
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
  
  def ad
    @categories = Category.all
  end

  private
  
  def find_ad
    @ad = Ad.find(params[:id])
  end
  
end
