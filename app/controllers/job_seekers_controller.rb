class JobSeekersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_response
  rescue_from ActiveRecord::RecordNotFound, with: :user_not_found_response

  def index
    render json: User.all, status: :ok
  end

  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, status: :created
  end

  def update
    current_user.update(user_params)
    render json: current_user, status: :accepted
  end

  def save
    save = Review.where(["user_id = ? and favoritejob = ?", params[:id], true]).uniq{ |rest| [rest.job.name] }
    render json: favorite, status: :ok
  end

  private

  def user_params
    params.permit(:name, :username, :password)
  end

  def render_unprocessable_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def user_not_found_response
    render json: { error: "User not found" }, status: :not_found
  end

end
