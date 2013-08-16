# -*- encoding : utf-8 -*-
class RemoveTimestampsFromCompaniesProducts < ActiveRecord::Migration
  def up
    remove_column :companies_products, :updated_at
    remove_column :companies_products, :created_at
  end

  def down
    add_column :companies_products, :created_at, :string
    add_column :companies_products, :updated_at, :string
  end
end
