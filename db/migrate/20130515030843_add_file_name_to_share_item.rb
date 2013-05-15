class AddFileNameToShareItem < ActiveRecord::Migration
  def change
    add_column :share_items, :file_name, :string
  end
end
