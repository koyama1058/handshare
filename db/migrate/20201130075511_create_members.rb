class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.integer :member_name_id, null: false
      t.references :report, foreign_key: true
      t.timestamps
    end
  end
end
