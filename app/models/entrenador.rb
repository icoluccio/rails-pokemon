class Entrenador < ApplicationRecord
  has_many :pokemons, dependent: :destroy
  has_many :batallas, dependent: :destroy

  validates :pokemons, length: { maximum: 6 }

  def agregar_pokemon(pokemon)
    pokemons << pokemon
    save!
  end

  def pokemon_vivos
    pokemons.select(&:vivo?)
  end

  def proximo_pokemon
    pokemons.sample
  end

  def no_mas_pokemon
    pokemon_vivos.empty?
  end
end
