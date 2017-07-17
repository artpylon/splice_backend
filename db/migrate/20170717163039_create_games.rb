class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :sets_found
      t.boolean :over

      t.timestamps
    end
  end
end
