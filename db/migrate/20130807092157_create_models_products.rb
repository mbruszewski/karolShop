# -*- encoding : utf-8 -*-
class CreateModelsProducts < ActiveRecord::Migration
  def change
    create_table :models_products do |t|
      t.integer :model_id
      t.integer :product_id
    end
  end
end
