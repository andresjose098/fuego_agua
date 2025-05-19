class LandingController < ApplicationController
  layout false, only: [:index]

  
  def index
     redirect_to velas_path if user_signed_in?
  end
end
