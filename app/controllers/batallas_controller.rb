class BatallasController < ApplicationController
  def show
    @batalla = Batalla.find(params[:id])
    @entrenador1 = @batalla.entrenador1
    @entrenador2 = @batalla.entrenador2
    @pokemon1 = @entrenador1.proximo_pokemon
    @pokemon2 = @entrenador2.proximo_pokemon
  end
end
