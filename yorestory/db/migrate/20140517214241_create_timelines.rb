class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :name
      t.integer :begin_date
      t.integer :end_date
      t.integer :user_id
      t.integer :marker_1
      t.integer :marker_2
      t.integer :marker_3
      t.integer :marker_4
      t.integer :marker_5
      t.integer :marker_6
      t.integer :marker_7
      t.integer :marker_8
      t.integer :marker_9
      t.integer :marker_10
      t.integer :marker_11
      t.integer :marker_12
      t.integer :marker_13
      t.integer :marker_14
      t.integer :marker_15
      t.integer :marker_16
      t.integer :marker_17

      t.timestamps
    end
  end
end
