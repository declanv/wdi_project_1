class AddEvent1ToYears < ActiveRecord::Migration
  def change
    add_column :years, :event_1, :string
  end
end
