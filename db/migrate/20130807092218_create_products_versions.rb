# -*- encoding : utf-8 -*-
class CreateProductsVersions < ActiveRecord::Migration
  def change
    create_table :products_versions do |t|
      t.string :product_id
      t.string :version_id
    end
  end
end
