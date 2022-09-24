class CreatePirates < ActiveRecord::Migration[7.0]
  def change
    create_table :pirates do |t|
      t.string :nome
      t.string :tripulacao
      t.integer :recompensa

      t.timestamps
    end
  end
end
