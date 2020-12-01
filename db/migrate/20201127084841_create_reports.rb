class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.integer :hope_id,        null: false
      t.integer :event_day_id,   null: false
      t.integer :sheets,         null: false
      t.integer :member_name_id, null: false
      t.text :text,              null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
