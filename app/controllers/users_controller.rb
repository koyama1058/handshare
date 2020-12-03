class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @reports = Report.where(user_id: @user).page(params[:page]).per(12)
  end
end
