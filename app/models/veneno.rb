class Veneno < Ataque
  def atacar(otro_pokemon)
    otro_pokemon.cambiar_estado(Envenenado.new)
  end
end
