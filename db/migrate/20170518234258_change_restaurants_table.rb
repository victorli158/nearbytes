class ChangeRestaurantsTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :description
    remove_column :restaurants, :hours
    add_column :restaurants, :phone, :string, null: false
    add_column :restaurants, :mon, :string, null: false
    add_column :restaurants, :tue, :string, null: false
    add_column :restaurants, :wed, :string, null: false
    add_column :restaurants, :thu, :string, null: false
    add_column :restaurants, :fri, :string, null: false
    add_column :restaurants, :sat, :string, null: false
    add_column :restaurants, :sun, :string, null: false
    add_column :restaurants, :categories, :string, null: false
  end
end
