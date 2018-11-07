class AddGradoToEstados < ActiveRecord::Migration[5.2]
  def change
    add_column :estados, :grado, :int
  end
end
