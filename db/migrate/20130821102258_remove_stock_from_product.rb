class RemoveStockFromProduct < ActiveRecord::Migration
  def up
    remove_column :products, :stock
  end

  def down
  end
end
