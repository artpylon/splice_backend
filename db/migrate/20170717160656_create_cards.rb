class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :shape
      t.string :color
      t.integer :number
      t.string :shading
      t.string :img

      t.timestamps
    end
  end
end
