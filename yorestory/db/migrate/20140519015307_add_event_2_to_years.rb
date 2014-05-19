class AddEvent2ToYears < ActiveRecord::Migration
  def change
    add_column :years, :event_2, :string
  end
end
