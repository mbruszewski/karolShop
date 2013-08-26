# -*- encoding : utf-8 -*-
class ChangeModelIdAndProductIdForModelsProducts < ActiveRecord::Migration
  def up
    change_table :models_products do |t|
      t.change :product_id, :integer
      t.change :model_id, :integer
    end  
  end

  def down
  end
end
