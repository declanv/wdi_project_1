class Year < ActiveRecord::Base

has_many :timelines, through: :milestones

has_many :milestones

end
