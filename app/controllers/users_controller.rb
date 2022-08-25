class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: User.all
  end
  def show
    render json: User.find(params[:id])
  end
  def create
    user = User.new(user_params)

    if user.save
      render json: user
    else
      render json: :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:username, :email, :password, :points)
  end

end

