class Site::AdController < ApplicationController
  before_action :authenticate_member!, only: [:new_ad]    
  layout 'site'
  def new_ad
      @ad = Ad.new
  end
  
  def create_ad
    @ad = Ad.new(ads_params)
    if @ad.save
      flash[:notice] = 'Anúncio criado com sucesso'
      redirect_to site_ad_path(params[:id])
    else
      flash[:notice] = 'Não foi possível criar o anuncio'
      redirect_to member_index_path
    end
  end
  
  def update_ad
  end
  
  def delete_ad
      # Esse método não deleta o anúncio, mas muda um valor de seu campo que o torna invisível
  end

  private
  
  def ads_params
    Params.require(:ad).permit(:title, :description, :category_id, :member_id, :price, :image)
  end
end