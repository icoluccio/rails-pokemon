class Batalla < ApplicationRecord
  belongs_to :entrenador1, class_name: 'Entrenador'
  belongs_to :entrenador2, class_name: 'Entrenador'

  def hacer_batalla
    return if termino?

    hacer_turno
    hacer_batalla
  end

  def termino?
    entrenador1.no_mas_pokemon || entrenador2.no_mas_pokemon
  end

  def hacer_turno
    un_pokemon = entrenador1.proximo_pokemon
    otro_pokemon = entrenador2.proximo_pokemon
    un_pokemon.atacar(otro_pokemon)
    otro_pokemon.atacar(un_pokemon)
  end
end
