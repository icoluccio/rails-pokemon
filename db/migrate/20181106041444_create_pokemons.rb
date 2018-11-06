class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.integer :vida, default: 0
      t.integer :ataque, default: 0
      t.integer :defensa, default: 0
      t.integer :velocidad, default: 0
    end
  end
end
