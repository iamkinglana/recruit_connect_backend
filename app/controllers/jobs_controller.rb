# class JobsController < ApplicationController
#       rescue_from ActiveRecord::RecordNotFound, with: :job_not_found_response


#       def index
#             render json: Job.all, status: :ok
#       end

#       def create
#         job = Job.create(job_params)
#         render json: job, status: :created
#       end

#       def show
#             job = Job.find(params[:id])
#             render json: job, serializer: JobsSerializer, status: :ok
#       end
#       def destroy
#             job = Job.find(params[:id])
#             job.destroy # Delete the job
#             render json: { message: "job successfully deleted" }, status: :ok
#       end


#     private

#     def job_not_found_response
#       render json: { error: "job not found" }, status: :not_found
#     end

#     def job_params
#       params.permit(:company_id, :job_title, :job_description, :job_location, :job_category, :job_level, :job_skills, :job_qualifications, :salary_highest, :salary_lowest, :application_deadline)
#     end

# end
class JobsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :job_not_found_response

  def index
    jobs = Job.all
    render json: jobs, status: :ok
  end

  def create
    job = Job.new(job_params)

    if job.save
      render json: job, status: :created
    else
      render json: { errors: job.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    job = find_job_by_id
    render json: job, serializer: JobSerializer, status: :ok
  end

  def destroy
    job = find_job_by_id
    job.destroy
    render json: { message: "Job successfully deleted" }, status: :ok
  end

  private

  def find_job_by_id
    Job.find(params[:id])
  end

  def job_not_found_response
    render json: { error: "Job not found" }, status: :not_found
  end

  def job_params
    params.permit(
      :employer_id,
      :job_title,
      :job_description,
      :job_location,
      :job_category,
      :job_level,
      :job_skills,
      :job_qualifications,
      :salary_highest,
      :salary_lowest,
      :application_deadline
    )
  end
end
