# -*- encoding : utf-8 -*-
class CreateProductsVersions < ActiveRecord::Migration
  def change
    create_table :products_versions do |t|
      t.integer :product_id
      t.integer :version_id
    end
  end
end
