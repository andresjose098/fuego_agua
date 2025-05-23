# app/controllers/admin/dashboard_controller.rb
class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin

  def index
    @compras = Compra.includes(:vela, :user).all
  end

  private

  def require_admin
    redirect_to root_path, alert: "Acceso denegado." unless current_user&.admin?
  end
end
