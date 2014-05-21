class Year < ActiveRecord::Base

has_many :timelines, through: :milestones

has_many :milestones, :foreign_key => 'title', :primary_key => 'title'



end

