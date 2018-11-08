class Envenenado < Estado
  def puedo_atacar?
    true
  end

  def afectar
    pokemon.recibir_danio(pokemon.vida / 10)
  end
end
