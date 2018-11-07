class Envenenado < Estado
  def puedo_atacar?
    true
  end

  def afectar(pokemon)
    pokemon.recibir_danio(pokemon.vida / 10)
  end
end
