class RemoveMarkersFromTimelines < ActiveRecord::Migration
  def change
    remove_column :timelines, :marker_1, :integer
    remove_column :timelines, :marker_2, :integer
    remove_column :timelines, :marker_3, :integer
  end
end
