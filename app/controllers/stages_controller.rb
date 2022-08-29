class StagesController < ApplicationController
  def index
    render json: Stage.all
  end
  def show
    render json: Stage.find_by(id: params[:id])
  end
end
