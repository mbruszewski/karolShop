class ChangeStatusForOrders < ActiveRecord::Migration
  def up
	change_table :orders do |t|
		t.change :status, :string, default: "nowy"
	end
  end

  def down
  end
end
