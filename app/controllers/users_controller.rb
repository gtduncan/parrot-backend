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
  def edit
    user = User.find(params[:id])
  end
  def update
    user = User.find(params[:id])

    if user.update(user_params)
      render json: user
    else
      render json: :edit, status: :unprocessable_entity
    end
  end
  def get_lessons_by_id
    user = User.find_by(id: params[:id])
    lessons = Lesson.where(user_id: user["id"])
    render json: lessons
  end

  private

  def user_params
    params.permit(:username, :email, :password, :points)
  end

end

