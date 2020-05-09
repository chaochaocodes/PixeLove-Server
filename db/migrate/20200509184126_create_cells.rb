class CreateCells < ActiveRecord::Migration[6.0]
  def change
    create_table :cells do |t|
      t.string :color
      t.integer :index
      t.integer :room_id

      t.timestamps
    end
  end
end
