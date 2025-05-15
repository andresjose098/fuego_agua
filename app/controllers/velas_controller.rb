class VelasController < ApplicationController
  def new
    @vela = Vela.new
  end

  def create
    @vela = Vela.new(vela_params)
    if @vela.save
      redirect_to velas_path, notice: "¡Tu vela fue publicada!"
    else
      render :new
    end
  end

  def index
    @velas = Vela.all
  end

  private

  def vela_params
    params.require(:vela).permit(:modelo, :color, :estilo)
  end
end
