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
  def get_stages_by_id
    lesson = Lesson.find_by(id: params[:id])
    stages = Stage.where(lesson_id: lesson["id"])
    render json: stages
  end

  def get_one_stage_by_id
    lesson = Lesson.find_by(id: params[:lesson_id])
    stages = Stage.where(lesson_id: lesson["id"])
    render json: stages
  end

  private

  def lesson_params
    params.permit(:user_id, :lesson_name, :lesson_description, :language, :current_stage)
  end
end
