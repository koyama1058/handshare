class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @reports = Report.where(@user)
  end
end