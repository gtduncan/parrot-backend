class LessonsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Lesson.all
  end
  def show
    render json: Lesson.find(params[:id])
  end
  def edit
    lesson = Lesson.find(params[:id])
  end
  def update
    lesson = Lesson.find(params[:id])

    if lesson.update(lesson_params)
      render json: lesson
    else
      render json: :edit, status: :unprocessable_entity
    end
  end

  private

  def lesson_params
    params.permit(:user_id, :lesson_name, :lesson_description, :language, :current_stage)
  end
end
