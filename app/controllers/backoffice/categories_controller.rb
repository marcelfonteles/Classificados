class Backoffice::CategoriesController < ApplicationController
  before_action :authenticate_admin!
  # Definindo o layout
  layout 'backoffice'
  
  def index
    @categories = Category.all
  end
  
  def create
   # format.js
  end
end
