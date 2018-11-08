class Paralizado < Estado
  def puedo_atacar?
    false
  end

  def afectar
    self.grado -= 1
    pokemon.cambiar_estado(nil) if grado.zero?
    save!
  end
end
