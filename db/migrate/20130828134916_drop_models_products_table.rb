class DropModelsProductsTable < ActiveRecord::Migration
  def up
    drop_table :models_products
  end

  def down
  end
end
