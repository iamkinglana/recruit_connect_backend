class EmployersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :employer_not_found_response

  def index
    render json: Employer.all, status: :ok
  end

  def show
    employer = Employer.find(params[:id])
    render json: employer, serializer: EmployerDetailsSerializer, status: :ok
  end

  def destroy
    employer = Employer.find(params[:id])
    employer.comments.destroy_all # Delete associated comments
    employer.destroy # Delete the employer
    render json: { message: "Employer successfully deleted" }, status: :ok
  end


  private

  def employer_not_found_response
    render json: { error: "Employer not found" }, status: :not_found
  end
end
