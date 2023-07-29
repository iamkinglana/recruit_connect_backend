class SavedJobsController < ApplicationController
  before_action :authenticate_user

  def index
    saved_jobs = current_user.saved_jobs
  end

  def create
    job = Job.find(params[:job_id])
    saved_job = current_user.saved_jobs.build(job: job)

    if saved_job.save
      render json: { message: 'Job saved successfully' }, status: :created
    else
      render json: { error: saved_job.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  def destroy
    saved_job = current_user.saved_jobs.find_by(job_id: params[:job_id])

    if saved_job&.destroy
      render json: { message: 'Job removed from saved jobs' }, status: :ok
    else
      render json: { error: 'Job not found in saved jobs' }, status: :not_found
    end
  end
end
