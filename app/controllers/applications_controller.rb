class ApplicationsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :application_not_found_response

  def index
    render json: Application.all, status: :ok
  end

  def create
    application = Application.create(application_params)
    render json: application, status: :created
  end

  def show
    application = Application.find(params[:id])
    render json: application, status: :ok
  end

  def destroy
    application = Application.find(params[:id])
    application.destroy
    render json: { message: "Application successfully deleted" }, status: :ok
  end

  private

  def application_not_found_response
    render json: { error: "Application not found" }, status: :not_found
  end

  def application_params
    params.permit(
      :job_seeker_id,
      :job_id,
      :application_date,
      :resume_attachment,
      :cover_letter_attachment,
      :application_status
    )
  end
end