class UsersController < ApplicationController
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

  def show
    if current_user
      render json: current_user, status: :ok
    else
      render json: { error: 'No active session' }, status: :unauthorized
    end
  end

  def update
    current_user.update(user_params)
    render json: current_user, status: :accepted
  end


  private

  def user_params
    params.permit(:name, :username, :password, :role)
  end

  def render_unprocessable_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def user_not_found_response
    render json: { error: "User not found" }, status: :not_found
  end
end
