class AddTitleToTimelines < ActiveRecord::Migration
  def change
    add_column :timelines, :title, :string
  end
end
