class CreateModelsProducts < ActiveRecord::Migration
  def change
    create_table :models_products do |t|
      t.string :model_id
      t.string :product_id
    end
  end
end
