class RemoveTitleFromMilestones < ActiveRecord::Migration
  def change
    remove_column :milestones, :title, :string
  end
end
