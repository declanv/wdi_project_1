class Milestone < ActiveRecord::Base
  belongs_to :timeline

  # this allows me to say recipe.ingredients
  # connect it to ingredients THROUGH some join table named "portions"
  belongs_to :year


  # finds a year and adds it to a milestone

def show

  @milestone = Milestone.find(params[:id])
  @milestone.years
end
end
