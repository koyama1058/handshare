class ReportsController < ApplicationController

  def index
    @reports = Report.all.order("id  DESC") 
  end

  def new
    report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.valid?
      @report.save
      redirect_to root_path
    else 
      render 'new'
    end
  end

  private
  
  def report_params
    params.permit(:hope_id, :event_day_id, :member_name_id, :sheets, :text).merge(user_id: current_user.id)
  end
end
