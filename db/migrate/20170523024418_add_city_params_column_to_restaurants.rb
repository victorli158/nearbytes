class AddCityParamsColumnToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :city_params, :string
  end
end
