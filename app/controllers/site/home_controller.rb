class Site::HomeController < ApplicationController
  before_action :find_ad, only: [:ad]
  before_action :list_categories, only: [:index, :example, :ad, :ad_by_category]
  # Para o layout posso fazer um before_action e chamar um método. O método definirá qual layout carregar.
  
  # Definindo o layout
  layout 'site'
  
  def index
    if member_signed_in?
      @ads = Ad.all.where.not(member_id: current_member.id).order('id DESC')
    else
      @ads = Ad.all.order('id DESC')
    end
  end
  
  def example
  end
  
  def ad
    visualization(params[:id])
    @member = Member.all
  end
  
  def ad_by_category
    @ads = Ad.where(category_id: params[:category_id])
  end

  private
  
  def find_ad
    @ad = Ad.find(params[:id])
  end
  
end
