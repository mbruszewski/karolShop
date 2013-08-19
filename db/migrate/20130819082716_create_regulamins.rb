# -*- encoding : utf-8 -*-
class CreateRegulamins < ActiveRecord::Migration
  def self.up
    create_table :regulamins do |t|
      t.string :language
      t.string :header_main
      t.text :description_main
      t.string :header
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :regulamins
  end
end
