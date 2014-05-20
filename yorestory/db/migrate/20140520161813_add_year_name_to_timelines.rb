class AddYearNameToTimelines < ActiveRecord::Migration
  def change
    add_column :timelines, :year_name, :integer
  end
end
