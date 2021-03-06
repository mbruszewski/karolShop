# -*- encoding : utf-8 -*-
class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :city
      t.string :street_and_number
      t.integer :post_code
			t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
