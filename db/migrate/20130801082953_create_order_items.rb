class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string :name
      t.decimal :price
      t.integer :count
      t.integer :order_id
      t.integer :product_id

      t.timestamps
    end
  end
end
