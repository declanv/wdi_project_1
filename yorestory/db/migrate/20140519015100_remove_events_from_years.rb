class RemoveEventsFromYears < ActiveRecord::Migration
  def change
    remove_column :years, :events, :string
  end
end
