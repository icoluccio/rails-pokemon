class CreateEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :estados do |t|
      t.references :pokemon, foreign_key: true
      t.string :type
    end
  end
end
