class Backoffice::DashboardController < ApplicationController
  before_action :authenticate_admin!
  # Definindo o layout
  layout 'backoffice'

  def index
  end

end
