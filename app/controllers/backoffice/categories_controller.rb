class Backoffice::CategoriesController < ApplicationController
  before_action :authenticate_admin!
  # Definindo o layout
  layout 'backoffice'
  
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
  end
  
  def create
    respond_to do |format|
      format.html {
        @category = Category.new(category_params)
        if @category.save
          flash[:notice] = "Categoria salva com sucesso"
          redirect_to backoffice_categories_path
        else
          flash[:notice] = "Não foi possível salvar a categoria"
          render new
        end
      }
    end
   # format.js
  end
  
  private
  
  def category_params
    params.require(:category).permit(:id, :description)
  end
end
