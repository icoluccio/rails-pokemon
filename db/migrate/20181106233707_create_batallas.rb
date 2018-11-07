class CreateBatallas < ActiveRecord::Migration[5.2]
  def change
    create_table :batallas do |t|
      t.references :entrenador1, index: true
      t.references :entrenador2, index: true
    end
  end
end
