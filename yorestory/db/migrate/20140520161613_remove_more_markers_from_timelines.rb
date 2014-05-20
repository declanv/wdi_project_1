class RemoveMoreMarkersFromTimelines < ActiveRecord::Migration
  def change
    remove_column :timelines, :marker_4, :integer
    remove_column :timelines, :marker_5, :integer
    remove_column :timelines, :marker_6, :integer
    remove_column :timelines, :marker_7, :integer
    remove_column :timelines, :marker_8, :integer
    remove_column :timelines, :marker_9, :integer
    remove_column :timelines, :marker_10, :integer
    remove_column :timelines, :marker_11, :integer
    remove_column :timelines, :marker_12, :integer
    remove_column :timelines, :marker_13, :integer
    remove_column :timelines, :marker_14, :integer
    remove_column :timelines, :marker_15, :integer
    remove_column :timelines, :marker_16, :integer
    remove_column :timelines, :marker_17, :integer
  end
end
