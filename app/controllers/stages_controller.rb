class StagesController < ApplicationController
  def index
    render json: Stage.all
  end
  def show
    render json: Stage.find(params[:id])
  end
end
