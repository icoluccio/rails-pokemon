class Entrenador < ApplicationRecord
  has_many :pokemons, dependent: :destroy

  validates :pokemons, length: { maximum: 6 }

  def agregar_pokemon(pokemon)
    pokemons << pokemon
    save!
  end
end
