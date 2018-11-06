class CreateBatallas < ActiveRecord::Migration[5.2]
  def change
    create_table :batallas do |t|
      t.references :entrenador1, foreign_key: true
      t.references :entrenador2, foreign_key: true
    end
  end
end
