class AddTipoPokemonIdToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_reference :pokemons, :tipo_pokemon, foreign_key: true
  end
end
