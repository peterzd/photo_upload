class AddFileAddressToShareItem < ActiveRecord::Migration
  def change
    add_column :share_items, :file_address, :string
  end
end
