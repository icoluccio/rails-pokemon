class CreateTipoPokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_pokemons do |t|
      t.string :nombre
    end
  end
end
