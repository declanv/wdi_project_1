class AddEvent4ToYears < ActiveRecord::Migration
  def change
    add_column :years, :event_4, :string
  end
end
