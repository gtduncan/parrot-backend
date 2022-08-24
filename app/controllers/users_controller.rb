class UsersController < ApplicationController
  def index
    render json: User.all
  end
  def show
    render json: User.find(params[:id])
  end
  def create
    render json: User.new(username: '...', email: '...', password: '...', points: 0)
  end
end
