class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.integer :restaurant_id, null: false
      t.string :url, null: false
      t.timestamps
    end
    add_index :pictures, :restaurant_id
  end
end
