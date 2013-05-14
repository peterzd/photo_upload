class CreateShareItems < ActiveRecord::Migration
  def change
    create_table :share_items do |t|
      t.decimal :extract_code

      t.timestamps
    end
  end
end
