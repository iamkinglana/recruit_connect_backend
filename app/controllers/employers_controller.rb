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

  def create
    employer = Employer.new(employer_params)

    if employer.save
      render json: employer, status: :created
    else
      render json: { errors: employer.errors.full_messages }, status: :unprocessable_entity
    end
  end


  private

  def employer_not_found_response
    render json: { error: "Employer not found" }, status: :not_found
  end

  def employer_params
    params(
    :name,
    :size,
    :logo,
    :website,
    :email,
    :phone
    )
  end
end
