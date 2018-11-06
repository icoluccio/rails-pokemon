class CreateAtaques < ActiveRecord::Migration[5.2]
  def change
    create_table :ataques do |t|
      t.string :type
      t.references :pokemon
    end
  end
end
