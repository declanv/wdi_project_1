class TimelinesController < ApplicationController

  before_action :authenticate_with_basic_auth

  def index
    @timelines = Timeline.order(id: :desc)
    @user = current_user
    @timeline = Timeline.new
  end

  def show
    @timeline = Timeline.find(params[:id])

    milestone = Milestone.find(params[:id])
    @milestone_name = milestone.year_name
    @milestone_title = milestone.title.upcase

    year = Year.find(params[:id])
    @event_1 = year.event_1
    @event_2 = year.event_2
    @event_3 = year.event_3
    @event_4 = year.event_4
    @event_5 = year.event_5

  end

def create

  Timeline.create(timeline_attributes)

# Trying to pass in the current timeline id to the timeline_id
  # @timeline = Timeline.find(params[:id])
  # id = @timeline.id

  Milestone.create({
    year_name: "birth",
    title: "#{begin_date}",
    timeline_id: id,
    })


  redirect_to timelines_path
end

#This method should allow the user to edit the start_date and end_date of the timeline.

def edit
  @timeline = Timeline.find(params[:id])

  render partial: "timelineform", locals: { timeline_local: @timeline }
end


def update

  timeline = Timeline.find(params[:id])

  timeline.update_attributes(timeline_attributes)

  redirect_to "/timelines/#{params[:id]}"
end

private

def timeline_attributes

  params.require(:timeline).permit(:title, :begin_date, :end_date, :user_id)
end

end
