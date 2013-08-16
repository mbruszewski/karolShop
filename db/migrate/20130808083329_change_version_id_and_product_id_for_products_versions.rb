# -*- encoding : utf-8 -*-
class ChangeVersionIdAndProductIdForProductsVersions < ActiveRecord::Migration
  def up
    change_table :products_versions do |t|
      t.change :product_id, :integer
      t.change :version_id, :integer
    end  
  end

  def down
  end
end
