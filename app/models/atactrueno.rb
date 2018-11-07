class Atactrueno < Ataque
  def atacar(otro_pokemon)
    otro_pokemon.recibir_danio(danio)
    otro_pokemon.cambiar_estado(Paralizado.new(grado: 5)) if [true, false].sample
  end

  def danio
    pokemon.velocidad
  end
end
