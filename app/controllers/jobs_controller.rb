class JobsController < ApplicationController
      rescue_from ActiveRecord::RecordNotFound, with: :job_not_found_response


      def index
            render json: Job.all, status: :ok
      end

      def show
            job = Job.find(params[:id])
            render json: job, serializer: JobsSerializer, status: :ok
      end
      def destroy
            job = Job.find(params[:id])
            job.destroy # Delete the job
            render json: { message: "job successfully deleted" }, status: :ok
      end


    private

    def job_not_found_response
      render json: { error: "job not found" }, status: :not_found
    end
end
