class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.integer :member_name_id, null: false
      t.text :words,                 null: false
      t.integer :order_id,           null: false
      t.references :report,          foreign_key: true
      t.timestamps
    end
  end
end
