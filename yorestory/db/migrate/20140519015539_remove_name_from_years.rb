class RemoveNameFromYears < ActiveRecord::Migration
  def change
    remove_column :years, :name, :string
  end
end
