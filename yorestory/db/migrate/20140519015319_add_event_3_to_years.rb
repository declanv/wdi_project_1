class AddEvent3ToYears < ActiveRecord::Migration
  def change
    add_column :years, :event_3, :string
  end
end
