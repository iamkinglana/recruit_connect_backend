class SavedJobsController < ApplicationController
  before_action :authenticate_user

  def index
    render json: SavedJob.all, status: :ok
  end

  def create
    review = SavedJob.create(review_params)
    render json: review, status: :created
  end

  private

  def review_params
    params.permit(:save, :user_id, :job_id, :job_seeker_id)
  end
end
