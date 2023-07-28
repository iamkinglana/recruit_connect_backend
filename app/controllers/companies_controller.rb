class CompaniesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :company_not_found_response


      def index
            render json: Company.all, status: :ok
      end
      def create
        company = Job.create(job_params)
        render json: company, status: :created
      end


      def show
            company = Company.find(params[:id])
            render json: company, serializer: CompaniesSerializer, status: :ok
      end
      def destroy
            company = Company.find(params[:id])
            company.destroy # Delete the company
            render json: { message: "company successfully deleted" }, status: :ok
      end


    private

    def company_not_found_response
      render json: { error: "company not found" }, status: :not_found
    end

    def job_params
      params.permit(:title, :description, :location, :requirements, :application_deadline, :salary_highest, :salary_lowest :company_id, :job_id)
    end
  end

end
