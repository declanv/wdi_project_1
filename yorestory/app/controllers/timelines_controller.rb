class TimelinesController < ApplicationController

  before_action :authenticate_with_basic_auth

  def index
    @timelines = Timeline.order(id: :desc)
    @user = current_user
    @timeline = Timeline.new
  end

  def show
    @timeline = Timeline.find(params[:id])
    # The below line is only necessary for a milestone form to work:
    # @milestone = Milestone.new
  end

def create

  Timeline.create(timeline_attributes)

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
