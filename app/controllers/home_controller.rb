class HomeController < ApplicationController
  def index
    if session[:user_id].nil?
      redirect_to login_path, alert: "Por favor, inicia sesión para continuar."
    end
  end
end
