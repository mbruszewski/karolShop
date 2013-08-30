class DropProductsVersionsTable < ActiveRecord::Migration
  def up
    drop_table :products_versions
  end

  def down
  end
end
