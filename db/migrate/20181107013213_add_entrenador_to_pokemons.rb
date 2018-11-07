class AddEntrenadorToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_reference :pokemons, :entrenador, foreign_key: true
  end
end
