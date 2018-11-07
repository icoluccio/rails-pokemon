class Placaje < Ataque
  def atacar(otro_pokemon)
    otro_pokemon.recibir_danio(danio)
  end

  def danio
    pokemon.ataque
  end
end
