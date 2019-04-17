class Members::MembersController < ApplicationController
    before_action :authenticate_member!
    layout 'site'
    def index
        @member = current_member
        @ads = Ad.all
    end
    
    def buy_ad
        @ad = Ad.find(params[:ad_id])
        if current_member.id != @ad.member_id
            @view = View.where(member_id: current_member.id, ad_id: @ad.id)
            @view.update(type_view: '2')
            redirect_to members_index_path
        else
            redirect_to members_index_path
        end
    end
    
    def new_ad
        @member = current_member
        @ad = Ad.new
        @categories = Category.all
    end
    
    def create_ad
        @ad = Ad.new(ads_params)
        @ad.member_id = current_member.id
        if @ad.save
            flash[:noitce] = 'Anúncio criado com sucesso'
            redirect_to site_ad_path(@ad.id)
        else
            flash[:noitce] = 'Não foi posspível criar o anúncio'
            redirect_to members_index_path
        end
    end
    
    def destroy_ad
        @ad = Ad.find(params[:ad_id])
        if @ad.member_id == current_member.id
            if @ad.destroy
                flash[:noitce] = 'Anúncio apagado com sucesso'
                redirect_to members_index_path
            else
                flash[:noitce] = 'Não foi posspível apagar o anúncio'
                redirect_to members_index_path
            end
        else
            flash[:noitce] = 'Esse anúncio não lhe pertence'
            redirect_to members_index_path 
        end
    end
    
    private
    
    def ads_params
       params.require(:ad).permit(:title, :description, :category_id, :member_id, :price, :image)
    end
end
