class MilestonesController < ApplicationController

  # before filter :name_of_some_method
  before_action :authenticate_with_basic_auth


  def create

    Milestone.create(milestone_attributes)

    # render json: Milestonee.create(milestonee_attributes)
    redirect_to "/timelines/#{milestone_attributes[:timeline_id]}"
  end

  def edit
    @milestone = Milestone.find(params[:id])
    render partial: "milestoneform", locals: { milestone_local: @milestone, timeline_id: @milestone.timeline.id }
  end

  def update
    milestone = Milestone.find(params[:id])

    milestone.update_attributes(milestone_attributes)

    redirect_to "/timelines/#{milestone.timeline.id}"
    # render json: params
  end

  def show
    # shows one milestonee
    @milestone = Milestone.find(params[:id])
  end

  private

  def milestone_attributes
    params.require(:milestone).permit(:title, :content, :timeline_id)
  end

end
