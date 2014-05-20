class AddYearNameToYears < ActiveRecord::Migration
  def change
    add_column :years, :year_name, :integer
  end
end
