class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.integer :name
      t.integer :timeline_id
      t.integer :year_id
      t.integer :year_name

      t.timestamps
    end
  end
end
