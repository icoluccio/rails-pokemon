class BatallasController < ApplicationController
  def show
    batalla = Batalla.find(params[:id])
    render json: {ent1: batalla.entrenador1, ent2: batalla.entrenador2}
  end
end
