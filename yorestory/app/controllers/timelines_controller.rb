class TimelinesController < ApplicationController

  before_action :authenticate_with_basic_auth

  def index
    @timelines = Timeline.order(id: :desc)
    @user = current_user
    @timeline = Timeline.new
  end

  def show


    @timeline = Timeline.find(params[:id])

    milestone = Milestone.where(timeline_id: params[:id])


    @year_1 = milestone[0].year_name
    @year_2 = milestone[1].year_name
    @year_3 = milestone[2].year_name
    @year_4 = milestone[3].year_name
    @year_5 = milestone[4].year_name
    @year_6 = milestone[5].year_name
    @year_7 = milestone[6].year_name
    @year_8 = milestone[7].year_name
    @year_9 = milestone[8].year_name
    @year_10 = milestone[9].year_name


    @year_date_1 = Year.find_by_title(@year_1.to_s)
    @year_date_2 = Year.find_by_title(@year_2.to_s)

    # @year = Year.find_by_milestone_id
    # @milestone_name = milestone.year_name
    # @milestone_title = milestone.title.upcase

    # # y = Year.new

    # # Milestone 1 info:
    # year1 = Year.find(params[:id])
    # @year_1_event_1 = year1.event_1
    # @year_1_event_2 = year1.event_2
    # @year_1_event_3 = year1.event_3
    # @year_1_event_4 = year1.event_4
    # @year_1_event_5 = year1.event_5

    # #Milestone 2 info:

    # yearname_1 = year1.year_name
    # yearname_2 = yearname_1 + 2
    # #Not allowing me to search year by the year_name column.
    # year2 = Year.find_by(year_name: yearname_2)
    # @year2_name = year2.title
    # @year_2_event_1 = year2.event_1
    # @year_2_event_2 = year2.event_2
    # @year_2_event_3 = year2.event_3
    # @year_2_event_4 = year2.event_4
    # @year_2_event_5 = year2.event_5

  end

def create

  Timeline.create(timeline_attributes)

  timeline_id = Timeline.last.id

  year_id = Year.find_by_year_name(params[:timeline][:begin_date].to_i).id

  end_date = params[:timeline][:end_date].to_i

  begin_date = params[:timeline][:begin_date].to_i

  Milestone.build(end_date, begin_date, year_id, timeline_id)

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
