class AddEvent5ToYears < ActiveRecord::Migration
  def change
    add_column :years, :event_5, :string
  end
end
