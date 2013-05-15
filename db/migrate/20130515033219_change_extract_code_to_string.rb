class ChangeExtractCodeToString < ActiveRecord::Migration
  def up
    change_column :share_items, :extract_code, :string
  end

  def down
    change_column :share_items, :extract_code, :decimal
  end
end
