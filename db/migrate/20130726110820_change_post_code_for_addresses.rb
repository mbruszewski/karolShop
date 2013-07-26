class ChangePostCodeForAddresses < ActiveRecord::Migration
  def up
		change_table :addresses do |t|
			t.change :post_code, :string
		end
  end

  def down
  end
end
