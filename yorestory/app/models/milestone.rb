class Milestone < ActiveRecord::Base
  belongs_to :timeline, :foreign_key => 'year_name', :primary_key => 'year_name'

  # this allows me to say recipe.ingredients
  # connect it to ingredients THROUGH some join table named "portions"
  belongs_to :year, :foreign_key => 'year_name', :primary_key => 'year_name'


  # finds a year and adds it to a milestone
  # m = Milestone.new
  # m.build
  # Milestone.build

  def self.build(end_date, begin_date, year_id, timeline_id)

    lifespan = end_date - begin_date

    step = (lifespan/10).floor

    0.upto(9) do |n|

      base_year = begin_date

      year_name = base_year + (step * n)

      Milestone.create({
      year_name: year_name,
      timeline_id: timeline_id,
      year_id: year_id
      })

    end
  end



end
