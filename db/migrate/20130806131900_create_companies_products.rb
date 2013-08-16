# -*- encoding : utf-8 -*-
class CreateCompaniesProducts < ActiveRecord::Migration
  def change
    create_table :companies_products do |t|
      t.integer :company_id
      t.integer :product_id

      t.timestamps
    end
  end
end
