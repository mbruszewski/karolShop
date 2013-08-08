# -*- encoding : utf-8 -*-
class AddIndexToUsersLogin < ActiveRecord::Migration
  def change
		add_index :users, :login, unique: true
  end
end
