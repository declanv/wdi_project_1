class Milestone < ActiveRecord::Base
  belongs_to :timeline, :foreign_key => 'title', :primary_key => 'title'

  # this allows me to say recipe.ingredients
  # connect it to ingredients THROUGH some join table named "portions"
  belongs_to :year, :foreign_key => 'title', :primary_key => 'title'


  # finds a year and adds it to a milestone

def show

  @milestone = Milestone.find(params[:id])
  @milestone.years
end
end
