class RemoveNameFromTimelines < ActiveRecord::Migration
  def change
    remove_column :timelines, :name, :string
  end
end
