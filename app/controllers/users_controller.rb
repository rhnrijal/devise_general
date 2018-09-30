class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :set_user

  def index
      @user = User.all
      if params[:search]
        @user = User.search(params[:search]).order("created_at DESC")
      else
        @user = User.all.order('created_at DESC')
      end
    end

  def show
    @user = User.find(params[:id])
  end

  def edit

  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      flash.row[:alert] = "Something went wrong. Please try again"
      render.edit
    end
  end

  def user_params
    params.require(:user).permit(:name,:email,:studentid,:sex,:nationality,:fos)
  end

  def set_user
    @user = User.find(params[:id])
  end
end