class AtaquesController < ApplicationController
  def atacar
    @pokemon1 = Pokemon.find(params[:pokemon1])
    @pokemon2 = Pokemon.find(params[:pokemon2])
    @ataque = Ataque.find(params[:ataque])
    @pokemon1.atacar(@pokemon2, @ataque)

    redirect_to(batallas_path(id: params[:batalla]))
  end
end
