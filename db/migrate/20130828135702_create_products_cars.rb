class CreateProductsCars < ActiveRecord::Migration
  def change
    create_table :products_cars do |t|
      t.string :product_id
      t.string :company_id
      t.string :model_id
      t.string :version_id

      t.timestamps
    end
  end
end
