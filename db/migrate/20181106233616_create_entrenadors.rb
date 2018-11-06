class CreateEntrenadors < ActiveRecord::Migration[5.2]
  def change
    create_table :entrenadors do |t|
      t.string :nombre
    end
  end
end
