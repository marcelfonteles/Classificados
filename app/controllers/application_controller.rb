class ApplicationController < ActionController::Base
    # Método para listar todas as categorias, usado na barra lateral de categorias
    def list_categories
        @categories = Category.all
    end
    
    # Método para mostrar todas as compras de um usuário
    def purchases
    end
    
    # Método para definir os 5 últimos anúncios visualizados
    def visualization(ad_id)
        if !your_ad(ad_id)
            @views = View.where(member_id: current_member)
            if @views.count < 5
                if verification_visualization(ad_id, @views)
                    View.create(member_id: current_member.id, ad_id: ad_id)
                end
            else
                if verification_visualization(ad_id, @views)
                    @views.sort_by {|view| view.updated_at}.first.update(ad_id: ad_id)
                end
            end
        end
    end
    
    # retorna true se o membro nunca tiver visto um anúncio
    def verification_visualization(ad_id, views)
        views.where(ad_id: ad_id).empty?
    end
    
    # retorna true se o Ad pertence ao membro logado
    def your_ad(ad_id)
        @ad = Ad.find(ad_id)
        return @ad.member_id == current_member.id
    end
end
