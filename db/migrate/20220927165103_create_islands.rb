class CreateIslands < ActiveRecord::Migration[7.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :arc

      t.timestamps
    end
  end
end
