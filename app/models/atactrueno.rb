class Atactrueno < Ataque
  def atacar(otro_pokemon)
    otro_pokemon.recibir_danio(danio)
    otro_pokemon.cambiar_estado(Paralizado.new(grado: 5)) if deberia_paralizar
  end

  def danio
    pokemon.velocidad
  end

  def deberia_paralizar
    [true, false].sample
  end
end
