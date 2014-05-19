class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.integer :name
      t.string :headline
      t.string :events
      t.string :weather

      t.timestamps
    end
  end
end
