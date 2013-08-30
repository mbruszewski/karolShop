class DropCompaniesProductsTable < ActiveRecord::Migration
  def up
    drop_table :companies_products
  end

  def down
  end
end
